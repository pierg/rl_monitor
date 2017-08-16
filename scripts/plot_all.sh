#!/bin/bash
#sudo matlab -nojvm -r "run RUN_full.m"

for D in `find ~/results_tf_torcs/* -type d`
do
    sudo matlab -r "run ${D}/RUN_full.m"
done