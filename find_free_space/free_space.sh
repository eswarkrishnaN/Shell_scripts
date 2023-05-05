#!/bin/bash

total_space_one=$(free -h | grep -E "Mem" | awk '{print $2}')


free_space_avalible=$(free -h | grep -E "Mem" | awk '{print $4}'| cut -c1-3)


echo "some your total space is $total_space_one $free_space_avaliable"

echo "$free_space_avalible"



if (( $(echo "$free_space_avaliable < 1" | bc -l) )); then
   echo "Your storage is running low: $free_space_avaliable" | mail -s "Low Disk Space Alert" "your_email_address@example.com"
fi

for server_list in "$list_of_servers"
do 
output=$(ssh $lis_of_server  free -h | grep -E "Mem" | awk '{print $2}')

echo "server id is $list_of_server \n and free space is $output"
if [[$output -lt 1.0]]; then
   echo "Your storage is running low: $free_space_avaliable" | mail -s "Low Disk Space Alert" "your_email_address@example.com"
fi
<<<<<<< HEAD
donec
=======
done
>>>>>>> f524ec5 (adding checking services persent are not)
