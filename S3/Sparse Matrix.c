#include<stdio.h>
void main()
{int a[10][3], b[10][3], s[20][3];
 int i, m, n, j, k;

    //[][0] represents row 
    //[][1] represents col 
    //[][2] represents value 
 printf("\nEnter number of rows & columns matrix A:"); 
 scanf("%d %d", &a[0][0], &a[0][1]);//entering info abt sparse matrix
 printf("\nEnter number of rows & columns of matrix B:");
 scanf("%d %d", &b[0][0], &b[0][1]);//entering info abt sparse matrix
 printf("\nEnter number of non zero elements of matrix A:");
 scanf("%d", &m);
 printf("\nEnter number of non zero elements of matrix B:");
 scanf("%d", &n);
 a[0][2]=m;//entering info abt sparse matrix
 b[0][2]=n;//entering info abt sparse matrix
 printf("\nEnter matrix A:");//entering info in sparse matrix
 for(i=1; i<m+1; i++)
    {printf("\n\tenter row of element %d: ", i );
     scanf("%d", &a[i][0]);
     printf("\n\tenter column of element %d: ", i);
     scanf("%d", &a[i][1]);
     printf("\n\tenter value of element %d: ", i);
     scanf("%d", &a[i][2]);
    }
 printf("\nEnter matrix B:");//entering info in sparse matrix
 for(i=1; i<n+1; i++)
    {printf("\n\tenter row of element %d: ", i );
     scanf("%d", &b[i][0]);
     printf("\n\tenter column of element %d: ", i);
     scanf("%d", &b[i][1]);
     printf("\n\tenter value of element %d: ", i);
     scanf("%d", &b[i][2]);
    }



//adding the two sparse matrix
 i=j=k=1;
 while(i<=m && j<=n)
 { s[0][0]=a[0][0]; s[0][1]=a[0][1]; s[0][3]=m+n;//info abt sum matrix
   if(a[i][0]==b[j][0] && a[i][1]==b[j][1])//rows and columns are the same
   { s[k][0]=a[i][0]; 
     s[k][1]=a[i][1];
     s[k][2]=a[i][2]+b[i][2];
     i++; j++; k++;
   }
   else if(a[i][0]==b[j][0] && a[i][1]<b[j][1])//row is the same but column of 1st<2nd
    {s[k][0]=a[i][0]; 
     s[k][1]=a[i][1];
     s[k][2]=a[i][2];
     i++; k++;     
    }
   else if(a[i][0]==b[j][0] && a[i][1]>b[j][1])//row is the same but column of 1st>2nd
    {s[k][0]=b[j][0]; 
     s[k][1]=b[j][1];
     s[k][2]=b[j][2];
     j++; k++;     
    }
   else if(a[i][0]>b[j][0])//row of 1st>2nd
    {s[k][0]=b[j][0]; 
     s[k][1]=b[j][1];
     s[k][2]=b[j][2];
     j++; k++;     
    }
   else if(a[i][0]<b[j][0])//row of 1st<2nd
    {s[k][0]=a[i][0]; 
     s[k][1]=a[i][1];
     s[k][2]=a[i][2];
     i++; k++;     
    }
 }
 while(i<=m)
 { s[k][0]=a[i][0];
   s[k][1]=a[i][1];
   s[k][2]=a[i][2];
   i++; k++;
 }
 while(j<=n)
 { s[k][0]=b[j][0];
   s[k][1]=b[j][1];
   s[k][2]=b[j][2];
   j++; k++;
 }



//printing the sum of the sparse matrix

printf("\n\nSum\n\n");
printf("Row\tColumns\tValue\n");
for(i=0; i<k; i++)
 printf("%d\t%d\t%d\n", s[i][0], s[i][1], s[i][2]);


}
