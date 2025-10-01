#include "blockingqueue.h"
#include <stdlib.h>
#include <semaphore.h>
#include <pthread.h>


struct ListNode {
    void *data;
    ListNode *next;
};

struct BlockingQueue{
    sem_t queue_sem;
    pthread_mutex_t queue_mutex;
    ListNode *first;
    ListNode *last;
};

BlockingQueue *queue_create() {
    BlockingQueue *queue = malloc(sizeof(BlockingQueue));
    queue->first = NULL;
    queue->last = NULL;
    sem_init(&queue->queue_sem, 0, 0);
    pthread_mutex_init(&queue->queue_mutex, NULL); // Initialize mutex
    return queue;
}

void queue_destroy(BlockingQueue *queue) {
    pthread_mutex_lock(&queue->queue_mutex);
    ListNode *pivot = queue->first;
    while (pivot != NULL) {
        ListNode *next = pivot->next;
        free(pivot);
        pivot = next;
    }
    pthread_mutex_unlock(&queue->queue_mutex);
    pthread_mutex_destroy(&queue->queue_mutex);
    sem_destroy(&queue->queue_sem);
    free(queue);
}

void add(BlockingQueue *queue, void *data) {
    ListNode *new_node = malloc(sizeof(ListNode));
    new_node->next = NULL;
    new_node->data = data;

    pthread_mutex_lock(&queue->queue_mutex);
    if (queue->last == NULL) {
        queue->first = new_node;
        queue->last = new_node;
    } else {
        queue->last->next = new_node;
        queue->last = new_node;
    }
    pthread_mutex_unlock(&queue->queue_mutex);

    sem_post(&queue->queue_sem);
}

void *pop(BlockingQueue *queue) {
    sem_wait(&queue->queue_sem);

    pthread_mutex_lock(&queue->queue_mutex);
    if (queue->first == NULL) {
        pthread_mutex_unlock(&queue->queue_mutex);
        return NULL;
    }
    ListNode *node = queue->first;
    queue->first = node->next;
    if (queue->first == NULL) {
        // Also setting last to NULL when the last element was removed
        queue->last = NULL;
    };
    pthread_mutex_unlock(&queue->queue_mutex);

    void *data = node->data;
    free(node);
    return data;
}
