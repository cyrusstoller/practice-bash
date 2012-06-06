#!/bin/bash

# Compute euler number http://en.wikipedia.org/wiki/Euler%27s_number

counter=$1 #first argument
i=1
factorial=1
res="1"

if [ $counter -le 65 ]
then
    while [ $i -le $counter ] #while i <= counter
    do
	factorial=$(( $factorial * $i ))
	res="$res + 1/$factorial" # capture a string
	i=$(( $i + 1 ))
    done

# send the string to `bc -l`
    echo "series:"
    echo "$res"
    echo "------------------------"
    echo "$res" | bc -l

else
    echo "Sorry this only works if n <= 65"
fi