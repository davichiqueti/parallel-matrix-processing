b-sequential:
	# Building sequential solution
	gcc sequential.c -o sequential.exe

r-sequential:
	# Running sequential solution
	./sequential.exe

b-parallel:
	# Building parallel solution
	gcc parallel.c -o parallel.exe

r-parallel:
	# Running parallel solution
	./parallel.exe

b-threadpool:
	gcc thread-pool/main.c thread-pool/threadpoolapi.c thread-pool/blockingqueue.c -o thread-pool/main.exe

r-threadpool:
	./thread-pool/main.exe