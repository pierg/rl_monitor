#!/bin/bash

for pid in `sudo docker ps -q`; do
	sudo docker cp $pid:rl_monitor/results ~
	sudo docker cp $pid:rl_monitor/models ~
done
exit