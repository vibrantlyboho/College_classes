#!/bin/bash
#shell script to find the largest among two numbers
printf "Enter the first number: "
read n1
printf "Enter the second number: "
read n2
if [ $n1 -gt $n2 ]
then
	echo "$n1 is the largest number"
elif [ $n1 -lt $n2 ]
then
	echo "$n2 is the largest number"
else
	echo "Both numbers are equal"
fi
