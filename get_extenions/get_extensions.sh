#!/bin/bash

read -p "What is your first name?: " first_name

read -p "What is your family name?: " family_name 

read -p "What is your extension number?: " extension_number 

read -N 4 -s -p  "What is your access code would you like to use when dialing in?: " access_code

echo "$first_name,$family_name,$extension_number,$access_code" >> extenions.csv
exit 0

