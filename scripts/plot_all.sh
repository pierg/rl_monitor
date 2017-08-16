#!/bin/bash
#sudo matlab -nojvm -r "run RUN_full.m"


for D in `find ~/results_tf_torcs -type d` do
    if [ -d "${D}" ]; then
        sudo matlab -nojvm -r "run ~/results_tf_torcs/${D}/RUN_full.m"
    fi
done