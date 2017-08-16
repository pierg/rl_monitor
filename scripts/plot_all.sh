#!/bin/bash
#sudo matlab -nojvm -r "run RUN_full.m"


for D in ~/results; do
    if [ -d "${D}" ]; then
        sudo matlab -nojvm -r "run ~/results/${D}/RUN_full.m"
    fi
done