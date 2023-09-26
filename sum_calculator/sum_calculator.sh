#!/bin/bash

sum=0
while true
do
	re_number='^[0-9]+$'
	read -p "Type q to quit. Enter number to add: " number

	if [ $number == "q" ]
	then
		break
	elif ! [[ $number =~ $re_number ]] 
	then
		echo "$number is not a number"
	else
		sum=$(( $sum + $number ))
	fi
done
echo "$sum"
	

