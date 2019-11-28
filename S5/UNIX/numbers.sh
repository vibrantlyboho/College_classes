#!/bin/bash
#shell script to generate numbers upto first argument
printf "" > numbers.txt
if [ $# -eq 1 ]
then
	i=1
	while [ $i -le $1 ]
	do
		echo "$i	`expr $i \* $i`" >> numbers.txt
		i=$(($i + 1))
	done
fi
