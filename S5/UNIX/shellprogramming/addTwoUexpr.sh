#!/bin/bash
#program to read two numbers and find sum using expr
echo "Enter the first number: "
read n1
echo "Enter the second number: "
read n2
sum=`expr $n1 + $n2`
echo "Sum: $sum"
