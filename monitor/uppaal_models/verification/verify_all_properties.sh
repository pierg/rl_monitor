#!/bin/bash

cd properties

list="$(find *.q)"

cd ..

for file in $list
do
    ./verify.sh $1 "properties/"$file
done
