#!/bin/bash

echo "the numbers are $@"
big=0
for item in $@;
do
	if (( $item >= $big ));
       	then
		big=$item;
	fi;
done
echo "the biggest number is ${big}"
