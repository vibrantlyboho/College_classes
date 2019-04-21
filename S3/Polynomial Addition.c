#include<stdio.h>
typedef struct 
{ int exp;
  int coef;}poly;

void main()
{ int i=0, j=0, k=0, m, n, sum, flag;
  poly a[10],b[10],s[10];
  printf("\nEnter number of terms of A:");
  scanf("%d", &m);
  printf("\nEnter terms of A:");
  for( ; i<m; i++)
   { printf("\nEnter exp:");
     scanf("%d", &a[i].exp);
     printf("\nEnter coef:");
     scanf("%d", &a[i].coef);}

  printf("\nEnter number of terms of B:");
  scanf("%d", &n);
  printf("\nEnter terms of B:");
  for( ; j<n; j++)
   { printf("\nEnter exp:");
     scanf("%d", &b[j].exp);
     printf("\nEnter coef:");
     scanf("%d", &b[j].coef);}
  


  i=0; j=0; k=0;
  while(i<=m && j<=n)
  { if(a[i].exp < b[j].exp)
      {s[k].exp=b[j].exp;
       s[k].coef=b[j].coef;
       j++; k++; flag++;}
    
    if(a[i].exp > b[j].exp)
      {s[k].exp=a[i].exp;
       s[k].coef=a[i].coef;
       i++; k++; flag++;}

    if(a[i].exp==b[j].exp)
      {sum=a[i].coef+b[j].coef;
       if(sum!=0)
         {s[k].coef=a[i].coef+b[j].coef;
          s[k].exp=a[i].exp;}
       i++; j++; k++; flag++;}
    
   }
   while(i<=m)
   {s[k].exp=a[i].exp;
    s[k].coef=a[i].coef;
    i++; k++;}
   
   while(j<=n)
   {s[k].exp=b[j].exp;
    s[k].coef=b[j].coef;
    j++; k++;}

for(i=0;i<k;i++)
 printf(" %dx^%d + ", s[i].coef, s[i].exp);

 
}

