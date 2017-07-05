#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'No arguments provided'
    echo 'Provide: '
    echo '	uppaal_model.xml'
    echo '	property.q'
    exit 1
fi

# $1 = uppaal model
# $2 = property in CTL

# -t0 = generate some trace
# -f = prefix Write symbolic traces to files 'prefix-n.xtr' rather than to stderr
verify_output=$({ time verifyta -t0 -f tracefile $1 $2; } 2>realtime.txt)
execution_time=`cat realtime.txt`
rm realtime.txt
rm tracefile-1.xtr
echo "Time to execute query: $execution_time"
if [[ $verify_output == *"Formula is satisfied."* ]]
	then echo "The property is satisfied"
else
	echo "The property is NOT satisfied"
	cp $1  $1_NOT_$2.xml
	echo $verify_output >> "$1_NOT_$2_verification_output.txt"
	echo "Model generated for counterexample"
fi
