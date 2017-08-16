#!/bin/bash
#sudo docker cp $(sudo docker ps -lq):rl_monitor/results ~/results_tf_torcs

for pid in `sudo docker ps -q`; do
	sudo docker cp $pid:rl_monitor/results ~/results_tf_torcs
#	sudo docker cp $pid:rl_monitor/models ~/results_tf_torcs
done

cd ~/results_tf_torcs/results

for D in *; do
    if [ -d "${D}" ]; then
        cd "${D}"
        sudo matlab -nojvm -r "run RUN_full.m"
        cd ..
    fi
done

exit