#!/bin/bash
# Remove an array of users and home directories
users=( johndoe malcomx )
for user in "${users[@]}"
do
	sudo userdel -r $user
done
