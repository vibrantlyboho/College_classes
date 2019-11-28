#to find students with average greater than 86%

BEGIN{
print("Name M1 M2 M3 M4 M5 Total Average")
avgtot=0
}

{
total= $2+$3+$4+$5+$6	
avg= total / 5
if(avg>86)
printf("%s %d %d %d %d %d %d %f\n", $1,$2,$3,$4,$5,$6,total,avg)
avgtot+=total
}

END{ 
avgtot= avgtot/3
print("\n Average of total is: ", avgtot)
}
