#!/bin/bash

cols=$(tput cols)
printf '%*s\n' "${cols}" ' ' | tr ' ' '='
echo "enter a webiste name like https://www.google.com"
printf '%*s\n' "${cols}" ' ' | tr ' ' '='

read -p " enter a website name " my_var



icheck=$(curl -Is $my_var | head -n 1  1>/dev/null 2>/dev/null)

if [ $? -ne  0  ]
then
   echo "no error"
   if [ icheck -eq 200]
   then 
     echo "your are acess to the network"
   elif [ icheck -eq 301]
   then
     echo "your are not enterd to this network"
   else
      echo "this is your status $icheck"
   fi
  else 
    echo "network is not connected"
fi
