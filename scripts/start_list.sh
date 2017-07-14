#!/bin/bash
detached=""
fn="reward_8"
duration="1h"
filename=""
opponents=""

while getopts ":det:f:" opt; do
	case $opt in
		d)
			detached="-d"
		;;
		t)
			suffix=''
			duration=$OPTARG$suffix
		;;
		f)
			filename="$OPTARG"
		;;
		e)
			opponents="-e"
		;;
		\?)
			echo "???" >&2
		;;
		:)
			echo "Option -$OPTARG requires an argument."
			exit 1
		;;
	esac
done

while read -r line
do
    name="$line"
    echo "Name read from file - $name"
    ./start.sh $detached -m $name -t $duration $opponents
    if [$detached = ""] ; 
    then 
	sleep $duration
    fi
    ./result.sh
done < "$filename"
