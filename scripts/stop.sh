#!/bin/bash
sudo docker exec $(sudo docker ps -q) pkill -9 python
sudo docker cp $(sudo docker ps -q):rl_monitor/results ~
sudo docker stop $(sudo docker ps -q)
sudo docker rm $(sudo docker ps -a -q)
