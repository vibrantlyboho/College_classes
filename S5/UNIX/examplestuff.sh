
u21@plab-OptiPlex-9020:~$ who | wc -l 
13
u21@plab-OptiPlex-9020:~$ who | cat > user.txt; wc -l user.txt
13 user.txt
u21@plab-OptiPlex-9020:~$ who | cat > user.txt; wc -l < user.txt
13 



# shell script to print no of users logged into system
u21@plab-OptiPlex-9020:~$ cat log.sh
#!/bin/bash
date
echo "Total users: `who | wc -l` " 
u21@plab-OptiPlex-9020:~$ bash log.sh
Wed Dec 11 14:41:26 IST 2019
Total users: 13 
u21@plab-OptiPlex-9020:~$ ls -l
# here log.sh doesnt have execute permission but you're still able to execute it because the bash was running it earlier
total 24
-rw-r--r-- 1 u21  u21 8980 Oct 25 15:15 examples.desktop
-rw-rw-r-- 1 plab u21    0 Oct 26 15:26 f1.txt
-rw-rw-r-- 1 u21  u21  108 Dec 11 14:41 log.sh
drwxrwxr-x 2 plab u21 4096 Oct 26 15:26 unix
-rw-rw-r-- 1 u21  u21  674 Dec 11 14:28 user.txt
 u21@plab-OptiPlex-9020:~$ ./log.sh
-bash: ./log.sh: Permission denied as the current dir doesn't have execute permission
u21@plab-OptiPlex-9020:~$ chmod u+x log.sh
u21@plab-OptiPlex-9020:~$ ls -l
total 24
-rw-r--r-- 1 u21  u21 8980 Oct 25 15:15 examples.desktop
-rw-rw-r-- 1 plab u21    0 Oct 26 15:26 f1.txt
-rwxrw-r-- 1 u21  u21  108 Dec 11 14:41 log.sh
drwxrwxr-x 2 plab u21 4096 Oct 26 15:26 unix
-rw-rw-r-- 1 u21  u21  674 Dec 11 14:28 user.txt
u21@plab-OptiPlex-9020:~$ ./log.sh
Wed Dec 11 14:45:27 IST 2019
Total users: 13 



u21@plab-OptiPlex-9020:~$ exp 5+3
The program 'exp' is currently not installed. You can install it by typing:
sudo apt-get install alliance. exp is not used for calculating an expression, expr is used.
u21@plab-OptiPlex-9020:~$ expr 5+3
5+3
#space is required btw the expression
u21@plab-OptiPlex-9020:~$ expr 5 + 3
8
 
u21@plab-OptiPlex-9020:~$ x=`expr 5 + 3` 
u21@plab-OptiPlex-9020:~$ echo $x
8

u21@plab-OptiPlex-9020:~$ n=$((1+2+3))
u21@plab-OptiPlex-9020:~$ echo $n
6
u21@plab-OptiPlex-9020:~$ n= $((2+3))
5: command not found due to space between = and $

u21@plab-OptiPlex-9020:~$ let n=5+3
u21@plab-OptiPlex-9020:~$ echo $n
8

u21@plab-OptiPlex-9020:~$ expr 5*3
5*3
u21@plab-OptiPlex-9020:~$ expr 5 * 3
expr: syntax error as * is a meta character
u21@plab-OptiPlex-9020:~$ expr 5 "*" 3
15



# shell script to read and print name
u21@plab-OptiPlex-9020:~$ nano name.sh
u21@plab-OptiPlex-9020:~$ cat name.sh
#!/bin/bash
echo "Enter the name:"
read name
echo "Name: $name"
u21@plab-OptiPlex-9020:~$ bash name.sh
Enter the name:
Joann
Name: Joann



# add two numbers
u21@plab-OptiPlex-9020:~$ nano add.sh
u21@plab-OptiPlex-9020:~$ cat add.sh
#!/bin/bash
echo "Enter first number:"
read n1
echo "Enter second number:"
read n2
echo "Sum is: `expr $n1 + $n2`"
u21@plab-OptiPlex-9020:~$ bash add.sh
Enter first number:
6
Enter second number:
4
Sum is: 10

u21@plab-OptiPlex-9020:~$ nano add.sh
u21@plab-OptiPlex-9020:~$ cat add.sh
#!/bin/bash
#add two numbers
echo "Enter first number:"
read n1
echo "Enter second number:"
read n2
let sum=n1+n2
echo "Sum is: $sum"
u21@plab-OptiPlex-9020:~$ bash add.sh
Enter first number:
4
Enter second number:
4
Sum is: 8



$0- name of program
$#- no of arguments
$1...n- arguments
sum=$(($1+$2)) # will add first & second command line arguments 



#shell script to find largest among two numbers
u21@plab-OptiPlex-9020:~$ nano large.sh
u21@plab-OptiPlex-9020:~$ cat large.sh
#!/bin/bash
printf "Enter first number: "
read n1
printf "Enter second number: "
read n2
if [ $n1 -gt $n2 ]
then 
 echo "$n1 is the largest number"
elif [ $n1 -lt $n2 ]
then 
 echo "$n2 is the largest number"
else
 echo "Both numbers are equal"
fi
u21@plab-OptiPlex-9020:~$ bash large.sh
Enter first number: 7
Enter second number: 6
7 is the largest number



#shell script to find largest among three numbers
u21@plab-OptiPlex-9020:~$ nano large.sh
u21@plab-OptiPlex-9020:~$ cat large.sh
#!/bin/bash
printf "Enter first number: "
read n1
printf "Enter second number: "
read n2
printf "Enter third number: "
read n3
if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ]
then 
 echo "$n1 is the largest number"
elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ]
then 
 echo "$n2 is the largest number"
elif [ $n3 -gt $n1 ] && [ $n3 -gt $n2 ]
then 
 echo "$n3 is the largest number"
else
 echo "Both numbers are equal"
fi
u21@plab-OptiPlex-9020:~$ bash large.sh
Enter first number: 123
Enter second number: 32
Enter third number: 543
543 is the largest number



#to find if a number is positive or negative
u21@plab-OptiPlex-9020:~$ nano positive.sh
u21@plab-OptiPlex-9020:~$ cat positive.sh
#!/bin/bash
echo "Enter a number: "
read num
if [ $num -gt 0 ]
then 
 echo "$num is positive"
elif [ $num -lt 0 ]
then
 echo "$num is negative"
else
 echo "THe number is 0"
fiu21@plab-OptiPlex-9020:~$ bash positive.sh
Enter a number: 
-7
-7 is negative
u21@plab-OptiPlex-9020:~$ bash positive.sh
Enter a number: 
0
THe number is 0
u21@plab-OptiPlex-9020:~$ bash positive.sh
Enter a number: 
9
9 is positive



#if a program runs successfully its exit status is 0

