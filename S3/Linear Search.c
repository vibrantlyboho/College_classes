#include<stdio.h>
void main() 
{ int arr[100],n, ch, pos=-1, i;
  printf("Enter the size of array: ");
  scanf("%d", &n);
  printf("Enter the elements of the array\n");
  for(i=0; i<n; i++)
 { printf("\nNum %d:", i+1);
   scanf("%d", &arr[i]);
  }
  printf("Enter the element you want to find: ");
  scanf("%d", &ch);
  for(i=0; i<n; i++)
 { if (arr[i]==ch)
    {pos=i;
     break;}
 }
  if(pos==-1)
    printf("Element not found\n");
  else
    printf("Element found at index %d\n", i);
}
