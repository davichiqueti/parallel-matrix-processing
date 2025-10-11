#!/bin/bash

make c-all

make r-sequential rows=2 cols=100000
make r-parallel rows=2 cols=100000 threads=2
make r-threadpool rows=2 cols=100000 threads=2
make r-parallel rows=2 cols=100000 threads=4
make r-threadpool rows=2 cols=100000 threads=4
make r-parallel rows=2 cols=100000 threads=6
make r-threadpool rows=2 cols=100000 threads=6
make r-parallel rows=2 cols=100000 threads=8
make r-threadpool rows=2 cols=100000 threads=8
make r-parallel rows=2 cols=100000 threads=10
make r-threadpool rows=2 cols=100000 threads=10
make r-parallel rows=2 cols=100000 threads=12
make r-threadpool rows=2 cols=100000 threads=12
make r-parallel rows=2 cols=100000 threads=14
make r-threadpool rows=2 cols=100000 threads=14
make r-parallel rows=2 cols=100000 threads=16
make r-threadpool rows=2 cols=100000 threads=16

make r-sequential rows=4 cols=100000
make r-parallel rows=4 cols=100000 threads=2
make r-threadpool rows=4 cols=100000 threads=2
make r-parallel rows=4 cols=100000 threads=4
make r-threadpool rows=4 cols=100000 threads=4
make r-parallel rows=4 cols=100000 threads=6
make r-threadpool rows=4 cols=100000 threads=6
make r-parallel rows=4 cols=100000 threads=8
make r-threadpool rows=4 cols=100000 threads=8
make r-parallel rows=4 cols=100000 threads=10
make r-threadpool rows=4 cols=100000 threads=10
make r-parallel rows=4 cols=100000 threads=12
make r-threadpool rows=4 cols=100000 threads=12
make r-parallel rows=4 cols=100000 threads=14
make r-threadpool rows=4 cols=100000 threads=14
make r-parallel rows=4 cols=100000 threads=16
make r-threadpool rows=4 cols=100000 threads=16

make r-sequential rows=8 cols=100000
make r-parallel rows=8 cols=100000 threads=2
make r-threadpool rows=8 cols=100000 threads=2
make r-parallel rows=8 cols=100000 threads=4
make r-threadpool rows=8 cols=100000 threads=4
make r-parallel rows=8 cols=100000 threads=6
make r-threadpool rows=8 cols=100000 threads=6
make r-parallel rows=8 cols=100000 threads=8
make r-threadpool rows=8 cols=100000 threads=8
make r-parallel rows=8 cols=100000 threads=10
make r-threadpool rows=8 cols=100000 threads=10
make r-parallel rows=8 cols=100000 threads=12
make r-threadpool rows=8 cols=100000 threads=12
make r-parallel rows=8 cols=100000 threads=14
make r-threadpool rows=8 cols=100000 threads=14
make r-parallel rows=8 cols=100000 threads=16
make r-threadpool rows=8 cols=100000 threads=16

make r-sequential rows=12 cols=100000
make r-parallel rows=12 cols=100000 threads=2
make r-threadpool rows=12 cols=100000 threads=2
make r-parallel rows=12 cols=100000 threads=4
make r-threadpool rows=12 cols=100000 threads=4
make r-parallel rows=12 cols=100000 threads=6
make r-threadpool rows=12 cols=100000 threads=6
make r-parallel rows=12 cols=100000 threads=8
make r-threadpool rows=12 cols=100000 threads=8
make r-parallel rows=12 cols=100000 threads=10
make r-threadpool rows=12 cols=100000 threads=10
make r-parallel rows=12 cols=100000 threads=12
make r-threadpool rows=12 cols=100000 threads=12
make r-parallel rows=12 cols=100000 threads=14
make r-threadpool rows=12 cols=100000 threads=14
make r-parallel rows=12 cols=100000 threads=16
make r-threadpool rows=12 cols=100000 threads=16

make r-sequential rows=16 cols=100000
make r-parallel rows=16 cols=100000 threads=2
make r-threadpool rows=16 cols=100000 threads=2
make r-parallel rows=16 cols=100000 threads=4
make r-threadpool rows=16 cols=100000 threads=4
make r-parallel rows=16 cols=100000 threads=6
make r-threadpool rows=16 cols=100000 threads=6
make r-parallel rows=16 cols=100000 threads=8
make r-threadpool rows=16 cols=100000 threads=8
make r-parallel rows=16 cols=100000 threads=10
make r-threadpool rows=16 cols=100000 threads=10
make r-parallel rows=16 cols=100000 threads=12
make r-threadpool rows=16 cols=100000 threads=12
make r-parallel rows=16 cols=100000 threads=14
make r-threadpool rows=16 cols=100000 threads=14
make r-parallel rows=16 cols=100000 threads=16
make r-threadpool rows=16 cols=100000 threads=16

make r-sequential rows=20 cols=100000
make r-parallel rows=20 cols=100000 threads=2
make r-threadpool rows=20 cols=100000 threads=2
make r-parallel rows=20 cols=100000 threads=4
make r-threadpool rows=20 cols=100000 threads=4
make r-parallel rows=20 cols=100000 threads=6
make r-threadpool rows=20 cols=100000 threads=6
make r-parallel rows=20 cols=100000 threads=8
make r-threadpool rows=20 cols=100000 threads=8
make r-parallel rows=20 cols=100000 threads=10
make r-threadpool rows=20 cols=100000 threads=10
make r-parallel rows=20 cols=100000 threads=12
make r-threadpool rows=20 cols=100000 threads=12
make r-parallel rows=20 cols=100000 threads=14
make r-threadpool rows=20 cols=100000 threads=14
make r-parallel rows=20 cols=100000 threads=16
make r-threadpool rows=20 cols=100000 threads=16

make r-sequential rows=24 cols=100000
make r-parallel rows=24 cols=100000 threads=2
make r-threadpool rows=24 cols=100000 threads=2
make r-parallel rows=24 cols=100000 threads=4
make r-threadpool rows=24 cols=100000 threads=4
make r-parallel rows=24 cols=100000 threads=6
make r-threadpool rows=24 cols=100000 threads=6
make r-parallel rows=24 cols=100000 threads=8
make r-threadpool rows=24 cols=100000 threads=8
make r-parallel rows=24 cols=100000 threads=10
make r-threadpool rows=24 cols=100000 threads=10
make r-parallel rows=24 cols=100000 threads=12
make r-threadpool rows=24 cols=100000 threads=12
make r-parallel rows=24 cols=100000 threads=14
make r-threadpool rows=24 cols=100000 threads=14
make r-parallel rows=24 cols=100000 threads=16
make r-threadpool rows=24 cols=100000 threads=16

make r-sequential rows=28 cols=100000
make r-parallel rows=28 cols=100000 threads=2
make r-threadpool rows=28 cols=100000 threads=2
make r-parallel rows=28 cols=100000 threads=4
make r-threadpool rows=28 cols=100000 threads=4
make r-parallel rows=28 cols=100000 threads=6
make r-threadpool rows=28 cols=100000 threads=6
make r-parallel rows=28 cols=100000 threads=8
make r-threadpool rows=28 cols=100000 threads=8
make r-parallel rows=28 cols=100000 threads=10
make r-threadpool rows=28 cols=100000 threads=10
make r-parallel rows=28 cols=100000 threads=12
make r-threadpool rows=28 cols=100000 threads=12
make r-parallel rows=28 cols=100000 threads=14
make r-threadpool rows=28 cols=100000 threads=14
make r-parallel rows=28 cols=100000 threads=16
make r-threadpool rows=28 cols=100000 threads=16

make r-sequential rows=32 cols=100000
make r-parallel rows=32 cols=100000 threads=2
make r-threadpool rows=32 cols=100000 threads=2
make r-parallel rows=32 cols=100000 threads=4
make r-threadpool rows=32 cols=100000 threads=4
make r-parallel rows=32 cols=100000 threads=6
make r-threadpool rows=32 cols=100000 threads=6
make r-parallel rows=32 cols=100000 threads=8
make r-threadpool rows=32 cols=100000 threads=8
make r-parallel rows=32 cols=100000 threads=10
make r-threadpool rows=32 cols=100000 threads=10
make r-parallel rows=32 cols=100000 threads=12
make r-threadpool rows=32 cols=100000 threads=12
make r-parallel rows=32 cols=100000 threads=14
make r-threadpool rows=32 cols=100000 threads=14
make r-parallel rows=32 cols=100000 threads=16
make r-threadpool rows=32 cols=100000 threads=16

make r-sequential rows=36 cols=100000
make r-parallel rows=36 cols=100000 threads=2
make r-threadpool rows=36 cols=100000 threads=2
make r-parallel rows=36 cols=100000 threads=4
make r-threadpool rows=36 cols=100000 threads=4
make r-parallel rows=36 cols=100000 threads=6
make r-threadpool rows=36 cols=100000 threads=6
make r-parallel rows=36 cols=100000 threads=8
make r-threadpool rows=36 cols=100000 threads=8
make r-parallel rows=36 cols=100000 threads=10
make r-threadpool rows=36 cols=100000 threads=10
make r-parallel rows=36 cols=100000 threads=12
make r-threadpool rows=36 cols=100000 threads=12
make r-parallel rows=36 cols=100000 threads=14
make r-threadpool rows=36 cols=100000 threads=14
make r-parallel rows=36 cols=100000 threads=16
make r-threadpool rows=36 cols=100000 threads=16

make r-sequential rows=40 cols=100000
make r-parallel rows=40 cols=100000 threads=2
make r-threadpool rows=40 cols=100000 threads=2
make r-parallel rows=40 cols=100000 threads=4
make r-threadpool rows=40 cols=100000 threads=4
make r-parallel rows=40 cols=100000 threads=6
make r-threadpool rows=40 cols=100000 threads=6
make r-parallel rows=40 cols=100000 threads=8
make r-threadpool rows=40 cols=100000 threads=8
make r-parallel rows=40 cols=100000 threads=10
make r-threadpool rows=40 cols=100000 threads=10
make r-parallel rows=40 cols=100000 threads=12
make r-threadpool rows=40 cols=100000 threads=12
make r-parallel rows=40 cols=100000 threads=14
make r-threadpool rows=40 cols=100000 threads=14
make r-parallel rows=40 cols=100000 threads=16
make r-threadpool rows=40 cols=100000 threads=16

make r-sequential rows=44 cols=100000
make r-parallel rows=44 cols=100000 threads=2
make r-threadpool rows=44 cols=100000 threads=2
make r-parallel rows=44 cols=100000 threads=4
make r-threadpool rows=44 cols=100000 threads=4
make r-parallel rows=44 cols=100000 threads=6
make r-threadpool rows=44 cols=100000 threads=6
make r-parallel rows=44 cols=100000 threads=8
make r-threadpool rows=44 cols=100000 threads=8
make r-parallel rows=44 cols=100000 threads=10
make r-threadpool rows=44 cols=100000 threads=10
make r-parallel rows=44 cols=100000 threads=12
make r-threadpool rows=44 cols=100000 threads=12
make r-parallel rows=44 cols=100000 threads=14
make r-threadpool rows=44 cols=100000 threads=14
make r-parallel rows=44 cols=100000 threads=16
make r-threadpool rows=44 cols=100000 threads=16

make r-sequential rows=48 cols=100000
make r-parallel rows=48 cols=100000 threads=2
make r-threadpool rows=48 cols=100000 threads=2
make r-parallel rows=48 cols=100000 threads=4
make r-threadpool rows=48 cols=100000 threads=4
make r-parallel rows=48 cols=100000 threads=6
make r-threadpool rows=48 cols=100000 threads=6
make r-parallel rows=48 cols=100000 threads=8
make r-threadpool rows=48 cols=100000 threads=8
make r-parallel rows=48 cols=100000 threads=10
make r-threadpool rows=48 cols=100000 threads=10
make r-parallel rows=48 cols=100000 threads=12
make r-threadpool rows=48 cols=100000 threads=12
make r-parallel rows=48 cols=100000 threads=14
make r-threadpool rows=48 cols=100000 threads=14
make r-parallel rows=48 cols=100000 threads=16
make r-threadpool rows=48 cols=100000 threads=16

make r-sequential rows=52 cols=100000
make r-parallel rows=52 cols=100000 threads=2
make r-threadpool rows=52 cols=100000 threads=2
make r-parallel rows=52 cols=100000 threads=4
make r-threadpool rows=52 cols=100000 threads=4
make r-parallel rows=52 cols=100000 threads=6
make r-threadpool rows=52 cols=100000 threads=6
make r-parallel rows=52 cols=100000 threads=8
make r-threadpool rows=52 cols=100000 threads=8
make r-parallel rows=52 cols=100000 threads=10
make r-threadpool rows=52 cols=100000 threads=10
make r-parallel rows=52 cols=100000 threads=12
make r-threadpool rows=52 cols=100000 threads=12
make r-parallel rows=52 cols=100000 threads=14
make r-threadpool rows=52 cols=100000 threads=14
make r-parallel rows=52 cols=100000 threads=16
make r-threadpool rows=52 cols=100000 threads=16

make r-sequential rows=56 cols=100000
make r-parallel rows=56 cols=100000 threads=2
make r-threadpool rows=56 cols=100000 threads=2
make r-parallel rows=56 cols=100000 threads=4
make r-threadpool rows=56 cols=100000 threads=4
make r-parallel rows=56 cols=100000 threads=6
make r-threadpool rows=56 cols=100000 threads=6
make r-parallel rows=56 cols=100000 threads=8
make r-threadpool rows=56 cols=100000 threads=8
make r-parallel rows=56 cols=100000 threads=10
make r-threadpool rows=56 cols=100000 threads=10
make r-parallel rows=56 cols=100000 threads=12
make r-threadpool rows=56 cols=100000 threads=12
make r-parallel rows=56 cols=100000 threads=14
make r-threadpool rows=56 cols=100000 threads=14
make r-parallel rows=56 cols=100000 threads=16
make r-threadpool rows=56 cols=100000 threads=16

make r-sequential rows=60 cols=100000
make r-parallel rows=60 cols=100000 threads=2
make r-threadpool rows=60 cols=100000 threads=2
make r-parallel rows=60 cols=100000 threads=4
make r-threadpool rows=60 cols=100000 threads=4
make r-parallel rows=60 cols=100000 threads=6
make r-threadpool rows=60 cols=100000 threads=6
make r-parallel rows=60 cols=100000 threads=8
make r-threadpool rows=60 cols=100000 threads=8
make r-parallel rows=60 cols=100000 threads=10
make r-threadpool rows=60 cols=100000 threads=10
make r-parallel rows=60 cols=100000 threads=12
make r-threadpool rows=60 cols=100000 threads=12
make r-parallel rows=60 cols=100000 threads=14
make r-threadpool rows=60 cols=100000 threads=14
make r-parallel rows=60 cols=100000 threads=16
make r-threadpool rows=60 cols=100000 threads=16

make r-sequential rows=64 cols=100000
make r-parallel rows=64 cols=100000 threads=2
make r-threadpool rows=64 cols=100000 threads=2
make r-parallel rows=64 cols=100000 threads=4
make r-threadpool rows=64 cols=100000 threads=4
make r-parallel rows=64 cols=100000 threads=6
make r-threadpool rows=64 cols=100000 threads=6
make r-parallel rows=64 cols=100000 threads=8
make r-threadpool rows=64 cols=100000 threads=8
make r-parallel rows=64 cols=100000 threads=10
make r-threadpool rows=64 cols=100000 threads=10
make r-parallel rows=64 cols=100000 threads=12
make r-threadpool rows=64 cols=100000 threads=12
make r-parallel rows=64 cols=100000 threads=14
make r-threadpool rows=64 cols=100000 threads=14
make r-parallel rows=64 cols=100000 threads=16
make r-threadpool rows=64 cols=100000 threads=16
