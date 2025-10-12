#include <stdlib.h>
#include <stdio.h>
#include <sys/time.h>
#include <pthread.h>


int threads_number;
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

void *thread_function(void *arg) {
    int thread_id = *((int *)arg);

    for (int i = thread_id; i < rows; i += threads_number) {
        sort(matrix[i]);
    }
}

void operate() {
    int nums[threads_number];
    pthread_t threads[threads_number];
    for (int i = 0; i < threads_number; i++) {
        nums[i] = i;
        pthread_create(&threads[i], NULL, thread_function, (void *)&nums[i]);
    }

    for (int i = 0; i < threads_number; i++) {
        pthread_join(threads[i], NULL);
    }
}

int main(int argc, char *argv[]) {
    if (argc < 4) {
        printf("[Parallel Solution] Must supply rows number, cols number and threads number arguments\n");
        return -1;
    }

    rows = atoi(argv[1]);
    cols = atoi(argv[2]);
    threads_number = atoi(argv[3]);
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
        "[Parallel Solution] Sorted %d Arrays of size size %d. Using %d threads. Time in seconds: %.6f\n",
        rows,
        cols,
        threads_number,
        elapsed_time
    );

    free_matrix();
    return 0;
}
