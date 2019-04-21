#include<stdio.h>
void main()
{int a[10][3], b[10][3], s[10][3];
 int i, m, n, j, k;
    //[][0] represents row 
    //[][1] represents col 
    //[][2] represents value 
 printf("\nEnter number of rows & columns matrix A:"); 
 scanf("%d %d", &a[0][0], &a[0][1]);//entering info abt sparse matrix
 printf("\nEnter number of non zero elements of matrix A:");
 scanf("%d", &m);
 a[0][2]=m;//entering info abt sparse matrix
 printf("\nEnter matrix A:");//entering info in sparse matrix
 for(i=1; i<m+1; i++)
    {printf("\n\tenter row of element %d: ", i );
     scanf("%d", &a[i][0]);
     printf("\n\tenter column of element %d: ", i);
     scanf("%d", &a[i][1]);
     printf("\n\tenter value of element %d: ", i);
     scanf("%d", &a[i][2]);
    }

//transpose
int temp[0][m];
for(i=0; i<m; i++)
{ temp[0][i]=a[i][0];
  a[i][0]=a[i][1];
  a[i][1]=temp[0][i];
}



printf("\n\nTranspose of A\n\n");
printf("Row\tColumns\tValue\n");
for(i=0; i<m+1; i++)
 printf("%d\t%d\t%d\n", a[i][0], a[i][1], a[i][2]);



}
