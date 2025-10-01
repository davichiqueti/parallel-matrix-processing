#include "blockingqueue.h"
#include "threadpoolapi.h"
#include <pthread.h>
#include <stdlib.h>


struct AsyncResult {
    void *result;
    unsigned int ready;
    pthread_mutex_t processing_mutex;
};

struct Task {
    void *(*function)(void *);
    void *arg;
    AsyncResult *async_result;
};

struct ThreadPool {
    unsigned int size;
    pthread_t *threads;
    BlockingQueue *task_queue;
};

static void *worker(void *arg) {
    ThreadPool *thread_pool = (void *)arg;
    while (1) {
        // Getting task from Queue
        Task *task = pop(thread_pool->task_queue);
        if (task == NULL) {
            // Handle poison pill
            break;
        }
        // Executing task if exists
        task->async_result->result = task->function(task->arg);
        task->async_result->ready = 1;
        pthread_mutex_unlock(&task->async_result->processing_mutex);
        free(task);
    }
    return NULL;
}

ThreadPool *thread_pool_init(unsigned int pool_size) {
    ThreadPool *thread_pool = malloc(sizeof(ThreadPool));
    thread_pool->size = pool_size;
    thread_pool->threads = (pthread_t*)calloc(pool_size, sizeof(pthread_t));
    thread_pool->task_queue = queue_create();
    // Initializing 
    for (int i = 0; i < pool_size; i++) {
        pthread_create(
            &thread_pool->threads[i],
            NULL,
            worker,
            thread_pool
        );
    }
    return thread_pool;
}

void *get(AsyncResult *result) {
    pthread_mutex_lock(&result->processing_mutex);
    if (result->ready == 0) {
        // Process unlocked with invalid result
        return NULL;
    }
    void *result_value = result->result;
    free(result);
    return result_value;
};


AsyncResult *thread_pool_execute(ThreadPool *pool, void *(*function)(void *), void *arg) {
    // Creating task
    Task *task = malloc(sizeof(Task));
    task->function = function;
    task->arg = arg;
    AsyncResult *async_result = malloc(sizeof(AsyncResult));
    pthread_mutex_init(&async_result->processing_mutex, NULL);
    async_result->ready = 0;
    task->async_result = async_result;
    // Adding task
    add(pool->task_queue, (void *)task);

    return async_result;
}

void thread_pool_destroy(ThreadPool *thread_pool) {
    for (int i = 0; i < thread_pool->size; ++i) {
        // Sending poison pill to consumers fecth and exit
        add(thread_pool->task_queue, NULL);
    }
    for (int i = 0; i < thread_pool->size; i++) {
        pthread_join(thread_pool->threads[i], NULL);
    }
    queue_destroy(thread_pool->task_queue);
    free(thread_pool->threads);
    free(thread_pool);
}
