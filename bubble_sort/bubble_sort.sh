#!/bin/bash

read -a arr;

for (( i=0; i<${#arr[@]}-1; i++ ));do
	for (( j=0; j<${#arr[@]}-1; j++ ));do
		if [[ ${arr[j]} -gt ${arr[j+1]} ]]; then
			tmp=${arr[j+1]}
			arr[j+1]=${arr[j]}
			arr[j]=$tmp

		fi
	done
done

echo ${arr[@]}

	
