#!/bin/bash
echo "Launch TORCS simulation with ddpg.py and LARVA monitoring"
sudo docker run -itd gym_torcs Xvfb :1 -screen 0 800x600x16
sudo docker exec -it $(sudo docker ps -lq) git pull origin gym_torcs
sudo docker exec -itd $(sudo docker ps -lq) x11vnc -forever -create -display :1.0
sudo docker exec -itd $(sudo docker ps -lq) make -C monitor/reward_3_speed/ run
if [[ $1 == "-d" ]]
then
	sudo docker exec -itd -e "DISPLAY=:1.0" $(sudo docker ps -lq) python ddpg.py
else
	sudo docker exec -it -e "DISPLAY=:1.0" $(sudo docker ps -lq) python ddpg.py
fi
