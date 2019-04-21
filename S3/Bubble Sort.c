#include<stdio.h>
void main() 
{ 
  int a[100],n, i, pass, temp;
  printf("Enter the size of array: ");
  scanf("%d", &n);
  printf("Enter the elements of the array\n");
  for(i=0; i<n; i++)
 { printf("\nNum %d:", i+1);
   scanf("%d", &a[i]);
  }
  for(pass=1; pass<n; pass++)
  { int x=0;
    for(i=0; i<n-pass; i++)
    { if(a[i]>a[i+1])
      { x=1;
        temp=a[i];
        a[i]=a[i+1];
        a[i+1]=temp;
      }
    }
    if(x==0)
      break;
  }
  printf("The sorted array is:\n");
  for(i=0; i<n; i++)
   printf("\n%d\n", a[i]);
}
