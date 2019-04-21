#include<stdio.h>
void main() 
{ int bs(int a[ ], int l, int h, int k)
  { int m;
    if(l<h)
    { m=(l+h)/2;
      if (k==a[m])
	return m;
      if (k<a[m])
	return bs(a, l, m-1, k);
      if (k>a[m])
	return bs(a, m+1, h, k);
     }
     return -1;
   }

  int arr[100],n, i, l, h, pos, ch;
  printf("Enter the size of array: ");
  scanf("%d", &n);
  printf("Enter the elements of the array\n");
  for(i=0; i<n; i++)
 { printf("\nNum %d:", i+1);
   scanf("%d", &arr[i]);
  }
  l=0;
  h=n;
  printf("Enter the element you want to find: ");
  scanf("%d", &ch);
  pos=bs(arr, l, h, ch);
  if(pos==-1)
    printf("Element not found!!\n");
  else
    printf("Element found at index %d!!!\n", pos);
}
