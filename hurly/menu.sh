#!/bin/bash
while true
do
echo $'1.Show Disk usage \n2.Show System uptime\n3.Show the users logged into the system'
read -p "What would you like to do? (Enter q to quit.)" input
case $input in
	1) df -h;;
	2) uptime;;
	3) w;;
	q) break;;
	*) echo "invalid";;
esac
done
