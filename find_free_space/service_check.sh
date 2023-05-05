#!/bin/bash

list=("tor" "docker" "alsa-restore" "ssh" "alsa-restore" "arpwatch" "console-setup")


for services in "${list[@]}";
do 
service=$(service $services status | grep -E Active | awk '{print $2}')
echo "$services  qstatus      $service"
done