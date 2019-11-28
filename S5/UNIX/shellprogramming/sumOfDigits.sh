#!/bin/bash
#shell script to find the sum of digits of a number
printf "Enter a positive number: "
read num
dup=$num
sumOfDigits=0
while [ $num -gt 0 ]
do
	mod=$((num % 10))	#It will split each digits
	sum=$((sum + mod))	#Add each digit to sum
	num=$((num / 10))	#divide num by 10
done
echo "Sum of digits of $dup: $sum"
