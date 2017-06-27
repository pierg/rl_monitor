#!/bin/bash
sudo docker exec $(sudo docker ps -lq) pkill -9 python
sudo docker cp $(sudo docker ps -lq):rl_monitor/results ~
sudo docker stop $(sudo docker ps -q)
