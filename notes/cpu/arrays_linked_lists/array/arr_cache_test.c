#include <stdlib.h>
#include <stdio.h>
#include <time.h>

void do_work(int *mem, int size, int step) {
    for (int i = 0; i < size; i += step)
        mem[i] *= 3;
}

double gather_time(int *mem, int size, int step) {
    clock_t start, end;
    start = clock();
    do_work(mem, size, step);
    end = clock();
    // return diff in millis
    return (1.0 * end - start) / (CLOCKS_PER_SEC / 1000);
}

int main(int argc, char* argv[]) {

    int size = 64 * 1024 * 1024;
    int *arr;
    int steps[] = {1, 2, 4, 8, 16, 32, 64, 128, 256};
    double times[9];

    arr = malloc(size * sizeof(int));
    if (!arr)
        return 1;

    for (int i = 0; i < sizeof(steps) / sizeof(int); i++) {
        times[i] = gather_time(arr, size, steps[i]);
    }

    for (int i = 0; i < sizeof(times) / sizeof(double); i++ ) {
        printf("time[%d] = %.3f\n", steps[i], times[i]);
    }
    return 0;                                                                                      }
