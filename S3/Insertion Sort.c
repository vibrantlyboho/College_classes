#include<stdio.h>
void main()
{ int n, i, k, temp;
 printf("Enter size of the array: ");
 scanf("%d", &n);
 int a[10];
 printf("Enter the elements of the unsorted array\n");
 for(i=0; i<n; i++)
 { printf("\nElement %d:", i+1);
   scanf("%d", &a[i]);
 }
 for(k=1; k<n; k++)
 { temp=a[k];
   i=k-1;
   while(i>=0&& temp<a[i])
   { a[i+1]=a[i];
     a[i]=temp;
     i--;
   }
 }
  printf("\n");
  for(i=0; i<n; i++)
 { printf(" %d ", a[i]);
 }
}
