#!/bin/bash

read -p "Enter amount of numbers to generate: " numbers
if ! [ -f numbers.txt ];then
	touch numbers.txt
else
	echo -n "" > numbers.txt
fi

for (( i=0; i<$numbers; i++ ));do
	echo "$RANDOM" >> numbers.txt
done
