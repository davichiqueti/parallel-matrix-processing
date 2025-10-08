#include <stdlib.h>
#include <stdio.h>
#include <time.h>


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

void sort(int array[]) {
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
}

void operate() {
    for (int i = 0; i < ARRAYS_NUMBER; i++) {
        sort(matrix[i]);
    }
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
