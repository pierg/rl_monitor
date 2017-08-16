#!/bin/bash
#sudo matlab -nojvm -r "run RUN_counters.m"


for D in ~/results; do
    if [ -d "${D}" ]; then
        sudo matlab -nojvm -r "run ~/results/${D}/RUN_counters.m"
    fi
done