#!/bin/bash
#sudo matlab -nojvm -r "run RUN_counters.m"

for D in `find ~/results_tf_torcs/* -type d`
do
    sudo matlab -nojvm -r "${D}/RUN_counters.m"
done