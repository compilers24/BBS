#include <stdlib.h>
#include <stdio.h>
#include <time.h>

int main()
{
int size = 64 * 1024 * 1024;
int *arr;
arr = malloc(size * sizeof(int));

//start counting
clock_t start, end;
start = clock();

// Loop 1
//for (int i = 0; i < size; i++) arr[i] *= 3;

// Loop 2
for (int i = 0; i < size; i += 16) arr[i] *= 3;

//end counting
end = clock();
// return diff in millis
printf("time in ms: %f\n", (1.0 * end - start) / (CLOCKS_PER_SEC / 1000) );
}
