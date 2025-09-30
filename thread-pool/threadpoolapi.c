#include "threadpoolapi.h"
#include <pthread.h>
#include <semaphore.h>
#include <stdlib.h>
#include <signal.h>


struct AsyncResult {
    void *result;
    unsigned int ready;
};

struct Task {
    void *(*function)(void *);
    void *arg;
    AsyncResult *async_result;
};

struct TaskListNode {
    Task *task;
    TaskListNode *next;
};

struct TaskListRoot {
    TaskListNode *first;
    TaskListNode *last;
};

struct ThreadPool {
    unsigned int size;
    unsigned short active;
    pthread_t *threads;
    TaskListRoot task_list;
    pthread_mutex_t task_list_mutex;
};

static Task *pop(TaskListRoot *root) {
    if (root->first == NULL) {
        return NULL;
    }
    TaskListNode *node = root->first;
    root->first = node->next;
    if (root->first == NULL) {
        root->last = NULL;
    };
   
    return node->task;
}

static void add(TaskListRoot *root, Task *task) {
    TaskListNode *new_node = malloc(sizeof(TaskListNode));
    new_node->next = NULL;
    new_node->task = task;
    if (root->first == NULL){
        root->first = new_node;
        root->last = new_node;
        return;
    }

    TaskListNode *pivot = root->first;
    while (pivot->next != NULL) {
        pivot = pivot->next;
    }
    pivot->next = new_node;
    root->last = new_node;
}

static void *consumer(void *arg) {
    ThreadPool *thread_pool = (void *)arg;
    while (thread_pool->active) {
        // TODO: Usar semaforo para deixar a thread dormindo quando n tiver tasks na fila
        // Getting task from Queue
        pthread_mutex_lock(&thread_pool->task_list_mutex);
        Task *task = pop(&thread_pool->task_list);
        pthread_mutex_unlock(&thread_pool->task_list_mutex);
        // Executing task if exists
        if (task != NULL) {
            task->async_result->result = task->function(task->arg);
            task->async_result->ready = 1;
            free(task);
        }
    }
}

ThreadPool *thread_pool_init(unsigned int pool_size) {
    ThreadPool *thread_pool = malloc(sizeof(ThreadPool));
    thread_pool->size = pool_size;
    thread_pool->threads = (pthread_t*)calloc(pool_size, sizeof(pthread_t));
    thread_pool->active = 1;
    TaskListRoot task_list = {NULL, NULL};
    thread_pool->task_list = task_list;
    pthread_mutex_init(&thread_pool->task_list_mutex, NULL);
    // Initializing 
    for (int i = 0; i < pool_size; i++) {
        pthread_create(
            &thread_pool->threads[i],
            NULL,
            consumer,
            thread_pool
        );
    }
    return thread_pool;
}

void *get(AsyncResult *result) {
    // TODO: falar com professor odorico para pensar em forma de esperar pelo resultado
    // Comentar que pensei em usar uma mutex mas se a thread consumidora morrer isso poderia esperar para sempre
    while (result->ready != 1) {
        continue;
    }
    return result->result;
};


AsyncResult *thread_pool_execute(ThreadPool *pool, void *(*function)(void *), void *arg) {
    // Creating task
    Task *task = malloc(sizeof(Task));
    task->function = function;
    task->arg = arg;
    AsyncResult *async_result = malloc(sizeof(AsyncResult));
    async_result->ready = 0;
    task->async_result = async_result;
    // Adding task
    pthread_mutex_lock(&pool->task_list_mutex);
    add(&pool->task_list, task);
    pthread_mutex_unlock(&pool->task_list_mutex);

    return async_result;
}

void thread_pool_kill(ThreadPool *thread_pool) {
    thread_pool->active = 0;
    for (int i = 0; i < thread_pool->size; i++) {
        pthread_join(thread_pool->threads[i], NULL);
    }
}

void thread_pool_join(ThreadPool *thread_pool) {
    while (thread_pool->task_list.first != NULL) {
        continue;
    }
    thread_pool->active = 0;
    for (int i = 0; i < thread_pool->size; i++) {
        pthread_join(thread_pool->threads[i], NULL);
    }
}
