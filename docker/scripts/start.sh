#!/bin/bash
echo "Launch TORCS simulation with ddpg.py and LARVA monitoring"

while getopts ":dm:" opt; do
	case $opt in
		d)
			detached="y"
		;;
		m)
			fn=$OPTARG
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

sudo docker pull pmallozzi/rl_monitor
sudo docker run -itd pmallozzi/rl_monitor Xvfb :1 -screen 0 800x600x16
sudo docker exec -it $(sudo docker ps -lq) git pull origin gym_torcs
sudo docker exec -itd $(sudo docker ps -lq) x11vnc -forever -create -display :1.0

if [ -z $fn ]
then
	sudo docker exec -itd $(sudo docker ps -lq) make -C monitor/reward_3_speed/ run
else
	sudo docker exec -itd $(sudo docker ps -lq) make -C monitor/$fn/ run
fi

if [[ $detached == "y" ]]
then
	sudo docker exec -itd -e "DISPLAY=:1.0" $(sudo docker ps -lq) python ddpg.py
else
	sudo docker exec -it -e "DISPLAY=:1.0" $(sudo docker ps -lq) python ddpg.py
fi
