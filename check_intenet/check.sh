#!/bin/bash

cols=$(tput cols)
printf '%*s\n' "${cols}" ' ' | tr ' ' '='
echo "enter a webiste name like https://www.google.com"
printf '%*s\n' "${cols}" ' ' | tr ' ' '='

read -p " enter a website name git " my_var



icheck=$(curl -Is $my_var | head -n 1 | awk '{print $2}')

if [ $? ==  0  ]
then
   echo "no error"
   if [ icheck == 200 ]
   then 
     echo "your are acess to the network"
   elif [ icheck == 301 ]
   then
     echo "your are not enterd to this network"
   else
      echo "this is your status $icheck"
   fi
  else 
    echo "network is not connected"
fi
