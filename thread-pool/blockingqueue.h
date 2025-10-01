#ifndef BLOCKING_QUEUE
#define BLOCKING_QUEUE


typedef struct BlockingQueue BlockingQueue;
typedef struct ListNode ListNode;
BlockingQueue *queue_create();
void queue_destroy(BlockingQueue *queue);
void add(BlockingQueue *queue, void *data);
void *pop(BlockingQueue *queue);

#endif
