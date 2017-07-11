#!/bin/bash
sudo docker cp $(sudo docker ps -lq):rl_monitor/results ~/results_tf_torcs