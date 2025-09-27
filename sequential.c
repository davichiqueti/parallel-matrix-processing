#include <stdlib.h>
#include <stdio.h>
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

void sort(int array[]) {
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

void operate() {
    for (int i = 0; i < ROWS; i++) {
        sort(matrix[i]);
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
