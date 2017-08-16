#!/bin/bash
#sudo docker cp $(sudo docker ps -lq):rl_monitor/results ~/results_tf_torcs

for pid in `sudo docker ps -q`; do
	sudo docker cp $pid:rl_monitor/results ~/results
#	sudo docker cp $pid:rl_monitor/models ~/models_keras
done
exit