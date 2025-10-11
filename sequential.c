#include <stdlib.h>
#include <stdio.h>
#include <time.h>


int **matrix;
int rows;
int cols;


void initialize_matrix() {
    matrix = (int **)malloc(rows*sizeof(int*));
    for (int i = 0; i < rows; i++) {
        matrix[i] = (int *)malloc (cols*sizeof(int));
        for (int j = 0; j < cols; j++) {
            matrix[i][j] = j;
        }
    }
}

void free_matrix() {
    for (int i = 0; i < rows; i++) {
        free(matrix[i]);
    }
    free(matrix);
}

void sort(int array[]) {
    int temp;
    for (int i = 0; i < cols; i++) {
        for (int j = 0; j < cols - i - 1; j++) {
            if (array[j] < array[j + 1]) {
                temp = array[j + 1];
                array[j + 1] = array[j];
                array[j] = temp;
            }
        }
    }
}

void operate() {
    for (int i = 0; i < rows; i++) {
        sort(matrix[i]);
    }
}

int main(int argc, char *argv[]) {
    if (argc < 3) {
        printf("[Sequential Solution] Must supply rows number and cols number arguments\n");
        return -1;
    }

    rows = atoi(argv[1]);
    cols = atoi(argv[2]);
    initialize_matrix();

    clock_t start, end;
    start = clock();    
    operate();
    end = clock();

    double cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;
    printf(
        "[Sequential Solution] Sorted %d Arrays of size size %d. Time: %f\n",
        rows,
        cols,
        cpu_time_used
    );

    free_matrix();
    return 0;
}
