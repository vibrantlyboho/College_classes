BEGIN{
printf("Rno\tName of Student\t\tAssi(10) Series(40) Internals(50)\n")
tots=0
tota=0
tot=0
}

{tota=$3+$4
tots=(($5+$6)/100)*40
tot=tots+tota
printf("%2d\t%-20s\t%2d\t%2d\t%2d\n", $1, $2, tota, tots, tot)
}

