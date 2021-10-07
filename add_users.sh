#!/bin/bash
# setup an array of new users with a temp password
users=( johndoe malcomx )
tempPassword="temp2021"
for user in "${users[@]}"
do
	sudo useradd -m $user
	echo -e "$tempPassword\n$tempPassword" | sudo passwd -q $user  
	sudo usermod -aG sudo $user
done
