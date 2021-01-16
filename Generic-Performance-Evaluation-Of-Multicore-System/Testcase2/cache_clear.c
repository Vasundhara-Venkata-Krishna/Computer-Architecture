#include <stdio.h>
#include <math.h>
#include <stdlib.h>

#define L3_size getconf -a | grep "cache"
#define size 2112000

int main()
{
    long *cache_arr = malloc(sizeof(long) * size);
    long j,k;
    long max;
    for (j=0; j<size; j++)
     {
        // cache_arr[j] = ((rand() % size) +1);
cache_arr[j] = rand();
     }
     
    for (k=0; k<size; k++)
     {
max = cache_arr[0];

        if(max<cache_arr[k])
        {
            max = cache_arr[k];
        }
/*
        else
        {
            max = max;
        }
*/

     }
      printf("The maximum value = %lu\n", max);
     
      return 0;
    }
