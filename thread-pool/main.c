#include "threadpoolapi.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>


#define ROWS 8
#define COLS 100000


int matrix[ROWS][COLS];


void initialize_matrix() {
    for (int i = 0; i < ROWS; i++) {
        for (int j = 0; j < COLS; j++) {
            matrix[i][j] = rand();
        }
    }
}

void *sort(void *arg) {
    int *array = (int *)arg;
    int temp;
    for (int i = 0; i < COLS; i++) {
        for (int j = 0; j < COLS - i - 1;j++) {
            if (array[j] < array[j + 1]) {
                temp = array[j + 1];
                array[j + 1] = array[j];
                array[j] = temp;
            }
        }
    }
}

void *sum_print(void *arg) {
    int *received = (int *)arg;
    int *calculated = malloc(sizeof(int));
    *calculated = *received * 2;
    printf("Received: %d Calculated: %d\n", *received, *calculated);
    return (void *)calculated;
}

void operate() {
    ThreadPool *thread_pool = thread_pool_init();
    AsyncResult *results[ROWS];
    for (int i = 0; i < ROWS; i++) {
        // results[i] = thread_pool_execute(thread_pool, sort, (void *)matrix[i]);
        int *value = malloc(sizeof(int));
        *value = i;
        results[i] = thread_pool_execute(thread_pool, sum_print, (void *)value);
    }
    thread_pool_join(thread_pool);
    for (int i = 0; i < ROWS; i++) {
        AsyncResult *async_result = results[i];
        int *returned_value = get(async_result);
        printf("Result value returned: %d\n", *returned_value);
    }
}

int main() {
    srand(time(NULL));
    // Initializing the matrix
    initialize_matrix();

    clock_t start, end;
    start = clock();    
    operate();
    end = clock();

    double cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC; 
    printf("Execution time: %f\n", cpu_time_used);
    return 0;
}
