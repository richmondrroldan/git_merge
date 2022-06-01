#!/usr/bin/bash -f

function check() {
        noargs='Warning: No arguments found D:, please provide them at the prompt below!'
        
	# If no args:
	if [[ -z $3 ]]; then
                echo $noargs;
		echo 'Please enter the first number: '; read x
		echo 'Please enter the second number: '; read y
		echo 'Please enter the operator: '; read z
        # Assign
	else
		x=$1; y=$2; z=$3
        fi

	#z=$($z | grep -v '\')
	mes="The numbers are $x and $y, and the operation is "
	# Case
	case $z in
        "+")
                echo $mes"Addition"
                en="sum";;
        "-")
                echo $mes"Subtraction"
                en="difference";;
        "*")
                echo $mes"Multiplication"
                en="product";;
        \*)
                echo $mes"Multiplication"; z='*'
                en="product";;
	"/")
                echo $mes"Division"
                en="quotient";;
        "**")
                echo $mes"Exponentiation"
                en="result";;
        \**)
                echo $mes"Exponentiation"; z='**'
                en="result";;
	*)
                echo "Error: Invalid operator!"
                en=3;;
	esac

	# Exit code 3
	if [[ $en == *"3"* ]]; then exit 3; fi
	# Print answer
	ans=$(($x$z$y))
	#ans=compute $x $z $y
	echo "The ${en} is ${ans}."
}

check $1 $2 $3


