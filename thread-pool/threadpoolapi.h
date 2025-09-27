#ifndef THREAD_POOL_API
#define THREAD_POOL_API


typedef struct AsyncResult AsyncResult;
typedef struct Task Task;
typedef struct ThreadPool ThreadPool;
typedef struct TaskListNode TaskListNode;
typedef struct TaskListRoot TaskListRoot;

ThreadPool *thread_pool_init();
AsyncResult *thread_pool_execute(ThreadPool *thread_pool, void *(*function)(void *), void *arg);
void *get(AsyncResult *result);
void thread_pool_kill(ThreadPool *thread_pool);
void thread_pool_join(ThreadPool *thread_pool);


#endif
