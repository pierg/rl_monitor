#!/bin/bash
echo "Launch TORCS simulation with ddpg.py and LARVA monitoring"

detached=""
monitor="-r reward_8"
fn="reward_8"
duration=""
original=false

while getopts ":dom:t:" opt; do
	case $opt in
		d)
			detached="-d"
		;;
		m)
			fn=$OPTARG
			monitor="-r $fn"
		;;
		t)
			duration="-x $OPTARG"
		;;
		o)
			original=true
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
sudo docker pull pmallozzi/rl_monitor

# start the virtual gui
sudo docker run -itd pmallozzi/rl_monitor Xvfb :1 -screen 0 800x600x16

# update the repo
echo "Update the repo..."
sudo docker exec -it $(sudo docker ps -lq) git pull origin gym_torcs
echo "...done"

# use original reward
if [ "$original" = true ] ; then
	echo "Switch to original function..."
    sudo docker exec -it $(sudo docker ps -lq) mv reward.py reward_1.py
    sudo docker exec -it $(sudo docker ps -lq) mv reward_0.py reward.py
    echo "...done"
fi

# retrieve the uppaal -> larva converter
sudo docker exec -it $(sudo docker ps -lq) bash -c "cd .. && git clone https://github.com/pierg/uppaal_to_larva.git"
sudo docker exec -it $(sudo docker ps -lq) mkdir /rl_monitor/monitor/$fn

# parse the uppaal file to create the monitor
sudo docker exec -it $(sudo docker ps -lq) bash -c "cd ../uppaal_to_larva && java -jar uppaal_to_larva.jar /rl_monitor/monitor/uppaal_models/$fn.xml /rl_monitor/monitor/$fn/"
echo "UPPAAL model converted to LARVA"
sudo docker exec -itd $(sudo docker ps -lq) x11vnc -forever -create -display :1.0

sudo docker exec -it $(sudo docker ps -lq) make -C monitor/$fn/ compile
sudo docker exec -itd $(sudo docker ps -lq) make -C monitor/$fn/ run

sudo docker exec -it $detached -e "DISPLAY=:1.0" $(sudo docker ps -lq) python ddpg.py $monitor $duration
