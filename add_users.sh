#!/bin/bash
# setup an array of new users with a temporary password
users=( johndoe malcomx )
password="temp2021"
sudo=false

for user in "${users[@]}"
do
	sudo useradd -m $user
	echo -e "$password\n$password" | sudo passwd -q $user  
    if [ "$sudo" = true ] ; then
        sudo usermod -aG sudo $user
    fi	
done
