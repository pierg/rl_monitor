#!/bin/bash
#sudo matlab -nojvm -r "run RUN_counters.m"

for D in `find ~/results/* -type d`
do
    sudo matlab -nojvm -r "run ${D}/RUN_counters.m"
done