#!/bin/bash

random_number=$(( $RANDOM % 100 ))

echo "The aim of the game is to guess a number from 0 to 100"
while true; do

	re_number='^[0-9]+$'
	read -p "Eneter the number: " player_number
	
	if ! [[ $player_number =~ $re_number ]];then 
		echo "$player_number is not a number"
	elif [ $player_number -eq $random_number ];then
		echo "you guessed number"
		break
	elif [ $player_number -gt $random_number ];then
		echo "Your number is to high"
	else
		echo "Your number is to low"
	fi

done

