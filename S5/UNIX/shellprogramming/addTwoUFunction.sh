#!/bin/bash
#shell script to add two numbers using function
function add()
{
	sum=$(($1 + $2))
	echo "Sum: $sum"
}

printf "Enter first number: "
read n1
printf "Enter the second number: "
read n2
add $n1 $n2
