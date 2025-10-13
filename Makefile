LOG_FILE = .log


c-sequential:	# Compile Sequential Solution
	# Building sequential solution
	gcc sequential/sequential.c -o sequential/sequential.exe

c-parallel:		# Compile Parallel Solution
	# Building parallel solution
	gcc parallel/parallel.c -o parallel/parallel.exe

c-threadpool:	# Compile Thread Pool API Solution
	gcc thread-pool/main.c thread-pool/threadpoolapi.c thread-pool/blockingqueue.c -o thread-pool/main.exe

c-all:	# Compile All
	$(MAKE) c-sequential
	$(MAKE) c-parallel
	$(MAKE) c-threadpool

r-sequential:	# Run Sequential Solution
	./sequential/sequential.exe $(rows) $(cols) >> $(LOG_FILE)

r-parallel:		# Run Parallel Solution
	./parallel/parallel.exe $(rows) $(cols) $(threads) >> $(LOG_FILE)

r-threadpool:	# Run Thread Pool API Solution
	./thread-pool/main.exe $(rows) $(cols) $(threads) >> $(LOG_FILE)
