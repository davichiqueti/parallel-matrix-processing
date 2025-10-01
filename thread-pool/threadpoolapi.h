#ifndef THREAD_POOL_API
#define THREAD_POOL_API


typedef struct AsyncResult AsyncResult;
typedef struct Task Task;
typedef struct ThreadPool ThreadPool;

ThreadPool *thread_pool_init(unsigned int pool_size);
AsyncResult *thread_pool_execute(ThreadPool *thread_pool, void *(*function)(void *), void *arg);
void *get(AsyncResult *result);
void thread_pool_destroy(ThreadPool *thread_pool);


#endif
