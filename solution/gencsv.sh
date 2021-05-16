#!/bin/bash
count=10
if [ $1 ] 
then #count is dynamic any number can be pass through argument
	count=$1
fi


> inputFile  #intialize or blank the inputFile 
for ((i = 1 ; i <= count ; i++)); do
	echo "$i, $(( RANDOM % 1000 ))" >> inputFile # Random no range is 0-999 
done
