#!/bin/bash
echo "Launch TORCS simulation with ddpg.py and LARVA monitoring"

detached=""
monitor="-r reward_8"
fn="reward_8"
duration=""
logs_output=""
original=false
opponents=false

while getopts ":doem:t:" opt; do
	case $opt in
		d)
			detached="-d"
			logs_output="> logs.txt"
		;;
		m)
			fn=$OPTARG
			if [ "$original" = false ] ; then
				monitor="-r $fn"
			fi
		;;
		t)
			duration="-x $OPTARG"
		;;
		o)
			original=true
			monitor="-r original"
		;;
		e)
			opponents=true
		;;
		\?)
			echo "???" >&2
		;;
		:)
			echo "Option -$OPTARG requires an argument."
			exit 1
		;;
	esac
done

# get docker image
echo "Pull the docker image..."
sudo docker pull pmallozzi/rl_monitor
echo "...done"
echo ""

# start the virtual gui
echo "Run the docker image..."
sudo docker run -td pmallozzi/rl_monitor Xvfb :1 -screen 0 800x600x16
echo "...done"
echo ""

# update the repo
echo "Update the repo..."
sudo docker exec -t $(sudo docker ps -lq) git pull origin gym_torcs
echo "...done"
echo ""

# use original reward
if [ "$original" = true ] ; then
	echo "Switch to original function..."
    sudo docker exec -t $(sudo docker ps -lq) mv reward.py reward_1.py
    sudo docker exec -t $(sudo docker ps -lq) mv reward_0.py reward.py
    echo "...done"
    echo ""
fi

if [ "$opponents" = true ] ; then
	echo "Using opponents..."
	sudo docker exec -t $(sudo docker ps -lq) mv scripts/sources/quickrace.xml /root/.torcs/config/raceman/quickrace.xml
	sudo docker exec -t $(sudo docker ps -lq) mv scripts/sources/quickrace.xml /usr/local/share/games/torcs/config/raceman/practice.xml
    sudo docker exec -t $(sudo docker ps -lq) mv autostart.sh autostart_1.sh
    sudo docker exec -t $(sudo docker ps -lq) mv autostart_opponents.sh autostart.sh
    echo "...done"
    echo ""
else
	echo "Practice mode..."
	sudo docker exec -t $(sudo docker ps -lq) mv scripts/sources/practice.xml /root/.torcs/config/raceman/practice.xml
	sudo docker exec -t $(sudo docker ps -lq) mv scripts/sources/practice.xml /usr/local/share/games/torcs/config/raceman/practice.xml
    echo "...done"
    echo ""
fi

# retrieve the uppaal -> larva converter
echo "Get the UPPAAL to LARVA converter..."
sudo docker exec -t $(sudo docker ps -lq) bash -c "cd .. && git clone https://github.com/pierg/uppaal_to_larva.git"
sudo docker exec -t $(sudo docker ps -lq) mkdir /rl_monitor/monitor/$fn
echo "...done"
echo ""

# parse the uppaal file to create the monitor
echo "Convert UPPAAL to LARVA..."
sudo docker exec -t $(sudo docker ps -lq) bash -c "cd ../uppaal_to_larva && java -jar uppaal_to_larva.jar /rl_monitor/monitor/uppaal_models/$fn.xml /rl_monitor/monitor/$fn/"
echo "...done"
echo ""

echo "Open fake display..."
sudo docker exec -td $(sudo docker ps -lq) x11vnc -forever -create -display :1.0
echo "...done"
echo ""

echo "Compile and run the monitor..."
sudo docker exec -t $(sudo docker ps -lq) make -C monitor/$fn/ compile
sudo docker exec -td $(sudo docker ps -lq) make -C monitor/$fn/ run
echo "...done"
echo ""

echo "Starting the simulation !"
echo ""
sudo docker exec -t $detached -e "DISPLAY=:1.0" $(sudo docker ps -lq) bash -c "python ddpg.py $monitor $duration $logs_output"
