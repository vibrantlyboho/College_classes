#!/bin/bash
#shell script to print numbers 1 to 100
i=1
printf "Print up to how many numbers? "
read n
while [ $i -le $n ]
do
	echo $i
	i=$(($i+1))
done
