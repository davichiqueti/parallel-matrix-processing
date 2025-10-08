#include "threadpoolapi.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>


#define THREADS_NUMBER 8
#define ARRAYS_NUMBER 16
#define ARRAY_SIZE 200000


int matrix[ARRAYS_NUMBER][ARRAY_SIZE];


void initialize_matrix() {
    for (int i = 0; i < ARRAYS_NUMBER; i++) {
        for (int j = 0; j < ARRAY_SIZE; j++) {
            matrix[i][j] = j;
        }
    }
}

void *sort(void *arg) {
    int *array = (int *)arg;
    int temp;
    for (int i = 0; i < ARRAY_SIZE; i++) {
        for (int j = 0; j < ARRAY_SIZE - i - 1; j++) {
            if (array[j] < array[j + 1]) {
                temp = array[j + 1];
                array[j + 1] = array[j];
                array[j] = temp;
            }
        }
    }
    return NULL;
}

void *sum_print(void *arg) {
    int *received = (int *)arg;
    int *calculated = malloc(sizeof(int));
    *calculated = *received * 2;
    printf("Received: %d Calculated: %d\n", *received, *calculated);
    return (void *)calculated;
}

void operate() {
    ThreadPool *thread_pool = thread_pool_init(THREADS_NUMBER);
    for (int i = 0; i < ARRAYS_NUMBER; i++) {
        int *value = malloc(sizeof(int));
        *value = i;
        thread_pool_execute(thread_pool, sort, (void *)matrix[i]);
    }
    thread_pool_destroy(thread_pool);
}

int main() {
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
