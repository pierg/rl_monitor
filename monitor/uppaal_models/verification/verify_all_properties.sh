#!/bin/bash

#file="properties.txt"

#oldIFS=$IFS
#IFS=$'\n'

#for line in $(<$file)
#do
 #   i++
  #  echo $i
   # echo $line > test.q
   # ./verify.sh $1 test.q
#done

cd propertiesToVerify

list="$(find *.q)"

cd ..

for file in $list
do
    ./verify.sh $1 "propertiesToVerify/"$file
done
