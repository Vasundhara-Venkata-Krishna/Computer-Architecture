#include <stdio.h>
#include <math.h>
#include <stdlib.h>

#define L3_size getconf -a | grep "cache"
#define size 4224000

int main()
{
    int *cache_array = malloc(sizeof(int) * size);
    int m,n;
    int maximum_value;
    for (m=0; m<size; m++)
     {
        // cache_arr[j] = ((rand() % size) +1);
	cache_array[m] = rand();
     }
     
    for (n=0; n<size; n++)
     {
	maximum_value = cache_array[0];

        if(maximum_value<cache_array[n])
        {
            maximum_value = cache_array[n];
        }


     }
     printf("The maximum value = %d\n", maximum_value);
     
     return 0;
}
