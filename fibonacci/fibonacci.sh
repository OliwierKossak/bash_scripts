#!/bin/bash

fib () {
	re_number='^[0-9]+$'
	fib_value=0
	read -p "Enter the number of of the Fibonacci sequence: " number
	if ! [[ $number =~ $re_number ]]
	then
		echo "not a number"
	else
		a=0
		b=1
		for (( i=0; i<$number; i++ ))
		do
				
			
			c=$(( a + b ))
			a=$b
			b=$c
			fib_value=$c
			echo "$fib_value"
		done
	
	fi
}

fib

