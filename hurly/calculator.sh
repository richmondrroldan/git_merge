# !bin/bash

read -p "Please enter the first number:" numberone
read -p "Please enter the second number:" numbertwo
read -p "Please enter the operator:" operator

function operation_name(){
echo $operator
case "$1" in
	-) items_operator="subtraction difference";;
	+) items_operator="addition sum";;
	\*) items_operator="multiplication product";;
	/) items_operator="division quotient";;
	*) items_operator="unavailable unavailable";;

esac
}

operation_name ${operator}
items_operator=(${items_operator})
operation=${items_operator[0]}
output=${items_operator[1]}

echo "The numbers are ${numberone} and ${numbertwo} and the operation is ${operation}"
echo "The ${output} is: $((${numberone}${operator}${numbertwo}))"
