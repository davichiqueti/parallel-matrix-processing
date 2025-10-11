

cols = 100000
threads = [2, 4, 6, 8, 12, 16]
print(threads)

rows = [2] + [x for x in range(4, (64+1), 4)]
print(rows)

with open('script_copy.sh', 'a') as file:
    for row_number in rows:
        file.write(f'make r-sequential rows={row_number} cols={cols}\n')
        for thread_number in threads:
            file.write(
                f'make r-parallel rows={row_number} cols={cols} threads={thread_number}\n'
            )
            file.write(
                f'make r-threadpool rows={row_number} cols={cols} threads={thread_number}\n'
            )
        file.write('\n')
