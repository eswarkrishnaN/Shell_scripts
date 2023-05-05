#!/bin/bash

headin(){
  printf "#%0.s" $(seq 1 $(tput cols))
  printf "\n"
}

message(){
  msg=$1
  headin
  printf "%s" "$1"
  printf "\n"
  headin

}
message "you need to run this script sudo"

if [ !  -e remotepass ];then 
  message "There is not remotepass file move to >>>pass remotepass <<< file in this are create a remotepass file"
fi

if [ ! -e remoteuser ];then
  message " There is no remoteuser file move to >>>remoteuser file<<< in this folder are create"
fi

if [ ! -e list_servers ];then
  message " There is no list server files in here >>>list_server file<< move are create a list_server file"
fi

#chaneg the parrot to your_username
checking_value=$(sshpass -f remotepass ssh -n -o StrictHostKeyChecking=No -o PubKeyAuthentication=No  parrot)

while read remotepass remoteuser 
do
  checking_value=$(sshpass -f $remotepass ssh -n -o StrictHostKeyCheckin=No -o PubKeyAuthentication=No $remotuser@$remotepass)
  $output = $checking_value  "cat /etc/os-release" | grep -w "Name"| awk -F "NAME=" '{print $2}'
  echo  "$output" | grep -i "ubuntu" 1>dev/null 2>dev/null
  if [ $? -eq 0 ];
  then
    os_version=$($cheking_value "cat /etc/os-release" | grep "VERSION_ID" | awk -F"VERSION_ID=" '{print $2}'
  else
    os_version$($checking_value "cat /etc/os-release" | grep "VERSION_ID"| awk -F "VERSION_ID=" '{print $3}'))
  fi

  free_space=$($checking_value free -m | grep -E "Mem" | awk '{print $4}')
  if [ $free_space -lte 500];
  then
    echo "your reached high use of ram $free_space"| mail -s "mail_alert _free spacing" some@mail.com
  fi

done < list.csv
 






