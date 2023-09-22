#!/bin/bash

read -p "What is your first name?: " first_name

read -p "What is your family name?: " family_name 


PS3="'headset' or 'handheld'"
select choice1 in headset handheld;
do
	echo "User type $choice1"
	break
done

PS3="'sale' or 'finance'"
select choice2 in sale finance;
do
	echo "User type $choice2"
	break
done


read -p "What is your extension number?: " extension_number 

read -N 4 -s -p  "What is your access code would you like to use when dialing in?: " access_code
echo

echo "$first_name,$family_name,$choice1,$choice2,$extension_number,$access_code" >> extenions.csv
exit 0

