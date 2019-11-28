paste students.txt series.txt assignment.txt | cut -f 1,3,5,6,8,9 | awk '{print $0}'

paste students.txt series.txt assignment.txt | cut -f 1,3,5,6,8,9 | awk '{printf("%2d\t%-20s\t%2d\t%2d\t%d\t%d\n",$1,$2,$3,$4,$5,$6)}'

paste students.txt series.txt assignment.txt | cut -f 1,3,5,6,8,9 | awk 'BEGIN{FS="\t"}{printf("%2d\t%-20s\t%2d\t%2d\t%d\t%d\n",$1,$2,$3,$4,$5,$6)}'

paste students.txt series.txt assignment.txt | cut -f 1,3,5,6,8,9 | awk 'BEGIN{FS="\t"}{
	total=($3+$4)*2/5+$5+$6
	printf("%2d\t%-20s\t%2d\t%2d\t%d\t%d\t%d\n",$1,$2,$3,$4,$5,$6,total)
}'



paste students.txt series.txt assignment.txt | cut -f 1,3,5,6,8,9 | awk 'BEGIN{FS="\t"}{printf("%2d\t%-20s\t%2d\t%2d\t%d\t%d\n",$1,$2,$3,$4,$5,$6)}'

paste students.txt series.txt assignment.txt | cut -f 1,3,5,6,8,9 | awk 'BEGIN{FS="\t"}{
	total=($3+$4)*2/5+$5+$6
	printf("%2d\t%-20s\t%2d\t%2d\t%d\t%d\t%f\n",$1,$2,$3,$4,$5,$6,total)
}'


paste students.txt series.txt assignment.txt | cut -f 1,3,5,6,8,9 | awk '
	function ceiling(x)
	{
		return (x == int(x)) ? x : int(x)+1
	}
BEGIN{FS="\t"
}
{
	total=($3+$4)*2/5+$5+$6
	printf("%2d\t%-20s\t%2d\t%2d\t%d\t%d\t%0.f\n",$1,$2,$3,$4,$5,$6,ceiling(total))
}'




