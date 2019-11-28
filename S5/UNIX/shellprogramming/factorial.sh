#!/bin/bash
#shell script to find the factorial of a number
printf "Enter a postive integer: "
read num

fact=1
i=1
while [ $i -le $num ]
do
	fact=$((fact * i))
	i=$((i + 1))
done
echo "$num! = $fact"
