#!/bin/bash
#shell script to check whether a number is positive or negative

echo "Enter an integer: "
read num
if [ $num -lt 0 ]
then
	echo "$num is a negative number"
elif [ $num -gt 0 ]
then
	echo "$num is a postive number"
else
	echo "Neither positive or negative"
fi
