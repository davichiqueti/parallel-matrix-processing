# Parallel Arrays Sorting

## Commands

Here are a few Makefile commands that can be used as a shortcut to compile and execute the code.

To check all the full commands or run them directly, see the [Makefile](./Makefile) content.

```bash
# Compile a specific version
make c-[sequential / parallel / threadpool]
# Compile all versions code

# Running sequential version
make r-sequential rows=$ROWS cols=$COLS
# Running Parallel and Thread Pool Lib versions
make r-[parallel / threadpool] rows=$ROWS cols=$COLS threads=$THREADS
```
