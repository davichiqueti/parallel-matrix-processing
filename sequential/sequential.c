#include <stdlib.h>
#include <stdio.h>
#include <sys/time.h>


int **matrix;
int rows;
int cols;


void initialize_matrix() {
    matrix = (int **)malloc(rows*sizeof(int*));
    for (int i = 0; i < rows; i++) {
        matrix[i] = (int *)malloc (cols*sizeof(int));
        for (int j = 0; j < cols; j++) {
            matrix[i][j] = cols - j;
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

    struct timeval start, end;
    gettimeofday(&start, NULL);
    // Operate on Matrix
    operate();
    gettimeofday(&end, NULL);
    long seconds = end.tv_sec - start.tv_sec;
    long microseconds = end.tv_usec - start.tv_usec;
    double elapsed_time = seconds + microseconds / 1000000.0;

    printf(
        "[Sequential Solution] Sorted %d Arrays of size size %d. Time in seconds: %.6f\n",
        rows,
        cols,
        elapsed_time
    );

    free_matrix();
    return 0;
}
