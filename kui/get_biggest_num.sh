#!/usr/bin/bash
max=100

arr=("$@" )
str=""
re='^[0-9]+$'

# Get args to string
for i in ${arr[@]}; do
	if ! [[ $i =~ $re ]]; then 
		echo "Error: Expected input are integers only!"
		exit 1
	fi
	str="$str\n$i"
done

# Process sort
echo -e "$str"
str=$(echo -e "$str" | sort -V)
big=$(echo -e "$str" | sort -V | tail -n 1)

# Check maximum
if [[ "$big" -gt "$max" ]]; then
	echo "Error: Exceeded maximum limit!"
	exit 1

fi

echo "The numbers are "$str
echo "The biggest number is "$big

