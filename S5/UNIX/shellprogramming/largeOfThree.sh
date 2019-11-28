#!/bin/bash
#shell script to find the largest of three numbers
printf "Enter the first number: "
read n1
printf "Enter the second number: "
read n2
printf "Enter the third number: "
read n3
if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ]
then
	echo "$n1 is the largest number"
elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ]
then
	echo "$n2 is the largest number"
else
	echo "$n3 is the largest number"
fi
