#!/bin/bash
detached=""
fn="reward_8"
duration="1"
filename=""
opponents=""
suffix='h'

while getopts ":det:f:" opt; do
	case $opt in
		d)
			detached="-d"
		;;
		t)
			duration=$OPTARG
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
    if [ $detached == "-d" ] ; 
    then 
		sleep $duration$suffix
    fi
    ./results.sh
done < "$filename"
