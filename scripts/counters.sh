#!/bin/bash
#sudo matlab -nojvm -r "run RUN_counters.m"


for D in ~/results_tf_torcs; do
    if [ -d "${D}" ]; then
        sudo matlab -nojvm -r "run ~/results_tf_torcs/${D}/RUN_counters.m"
    fi
done