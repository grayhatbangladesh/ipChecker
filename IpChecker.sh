#!/bin/bash
clear
figlet GHHBD
echo "Created By: Adnan Khan"
read -p "Enter 3 octet of IP: " ip 

for ((nam1=1; nam1<256; nam1++)); do
    nnn=$(ping -c 1 $ip.$nam1 | grep -o "bytes from")

    if [ "$nnn" == "bytes from" ]; then
        echo "$ip.$nam1 is UP"
    else
        echo "$ip.$nam1 is DOWN"
    fi
done
