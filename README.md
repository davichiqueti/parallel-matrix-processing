# Parallel Arrays Sorting

This repository is dedicated to a project to the "Parallel and Distributed Programming" subject in my bacharelal course.

The idea is to make analysis of a same problem solved with sequential programming, parallel programing and using a parallel programming pattern implemented by me.
The problem used was sorting N arrays with same size using bubble sort, that have O(N) of computational complexity.

All versions were tested with different N number of arrays to be sorted. Also both the Parallel and Thread Pool solutions were tested with different threads number.

### Sequential Implementation. [(See Implementation)](sequential/)

The simplest way of solving the problem, used as a base in speed up analysis. This version just applies the bubble sort algorithm for each one of the arrays, one by one.

### Parallel Implementation. [(See Implementation)](parallel/)

Dividing the arrays to be sorted in multiple threads to be sorted.

### Thread Pool Pattern Implementation. [(See Implementation)](thread-pool/)

In this version I implemented a reusable C library that abstracts thread management via a pool.
Exposing only key methods to the user in the [header file](thread-pool/threadpoolapi.h):

1. Create the Thread Pool with a custom number of threads
2. Send a task to be in the Thread Pool, getting a AsyncResult to access the task result later
3. Get the result of a task using the AsyncResult pointer. Blocking until task be completed.
4. Destroy the thread pool performing memory clean up

## Results and Analysis

You can check some of the performance analysis graphics in the [analysis folder](analysis/).

Both the manual parallel solution and the Thread Pool solution achieve substantial speedups, especially as the problem size grows (more rows/arrays).
Peak speedup typically reaches around 6–6.5x with approximately 8–16 threads.
This aligns with the test machine’s hardware (12 logical threads: 6 cores × 2 threads/core). Beyond that, speedup tends to plateau due to hardware limits and overheads.

Efficiency starts relatively high with a small number of threads (particularly for larger problems).
As thread count increases, efficiency steadily declines—a common effect of overheads, contention, and the inability of hardware to fully utilize ever-increasing threads.

## Commands

Here are a few Makefile commands that can be used as a shortcut to compile and execute the code.

To check all the full commands or run them directly, see the [Makefile](./Makefile) content.

```bash
# Compile a specific version
make c-[sequential / parallel / threadpool]
# Compile all versions code
make c-all

# Running sequential version
make r-sequential rows=$ROWS cols=$COLS
# Running Parallel and Thread Pool Lib versions
make r-[parallel / threadpool] rows=$ROWS cols=$COLS threads=$THREADS
```
