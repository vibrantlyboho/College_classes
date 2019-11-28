#!/bin/bash
#shell script to find the average of n numbers
printf "Enter the size: "
read n
i=1
sum=0
while [ $i -le $n ]
do
	printf "Enter number$i: "
	read num
	sum=$((sum + num))
	i=$((i + 1))
done
avg=$(echo $sum / $n | bc -l)
echo "Average: $avg"
