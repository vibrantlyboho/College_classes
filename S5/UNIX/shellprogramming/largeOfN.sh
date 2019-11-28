#!/bin/bash
#shell script to find the largest of N numbers
printf "Enter the size: "
read n
i=1
max=0
while [ $i -le $n ]
do
	printf "Enter number$i: "
	read num
	if [ $i -eq 1 ]	#set first numbers
	then
		max=$num
	else
		if [ $num -gt $max ]
		then
			max=$num
		fi
	fi
	i=$((i+1))
done
echo "Largest Number: $max"
