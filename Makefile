
c-sequential:	# Compile Sequential Solution
	# Building sequential solution
	gcc sequential.c -o sequential.exe

c-parallel:		# Compile Parallel Solution
	# Building parallel solution
	gcc parallel.c -o parallel.exe

c-threadpool:	# Compile Thread Pool API Solution
	gcc thread-pool/main.c thread-pool/threadpoolapi.c thread-pool/blockingqueue.c -o thread-pool/main.exe

c-all:	# Compile All
	$(MAKE) c-sequential
	$(MAKE) c-parallel
	$(MAKE) c-threadpool

r-sequential:	# Run Sequential Solution
	./sequential.exe

r-parallel:		# Run Parallel Solution
	./parallel.exe

r-threadpool:	# Run Thread Pool API Solution
	./thread-pool/main.exe
