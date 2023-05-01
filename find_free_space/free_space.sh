#!/bin/bash

total_space_one=$(free -h | grep -E "Mem" | awk '{print $2}')


free_space_avalible=$(free -h | grep -E "Mem" | awk '{print $4}'| cut -c1-3)


echo "some your total space is $total_space_one $free_space_avaliable"

echo "$free_space_avalible"



if [ "$free_space_avalibleif" -lt  1 ]; then
   echo "Your storage is running low: $free_space_avaliable" | mail -s "Low Disk Space Alert" "your_email_address@example.com"
fi
