#!/bin/bash
#shell script to find sum of array elements
arr=(10 20 30 40 50)
sum=0
for i in ${arr[@]} #using ${arr[@]} or ${arr[*]}, we can access all array elements.
do
	sum=`expr $sum + $i`
done
echo "Sum of array elements: $sum"
