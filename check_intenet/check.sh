cols=$(tput cols)
printf '%*s\n' "${cols}" ' ' | tr ' ' '='
echo "enter a website name like https://www.google.com"
printf '%*s\n' "${cols}" ' ' | tr ' ' '='

read -p "enter a website name: " my_var

curl -Is $my_var > /dev/null 2>&1
curl_exit_status=$?

if [ $curl_exit_status == 0 ]
then
   icheck=$(curl -Is $my_var | head -n 1 | awk '{print $2}')
   if [ $icheck == 200 ]
   then 
     echo "you are accessing the network"
   elif [ $icheck == 301 ]
   then
     echo "you are not authorized to access this network"
   else
      echo "some times went wrong may network not connected are you entered in valid url"
   fi
else 
    echo "network is not connected"
fi
