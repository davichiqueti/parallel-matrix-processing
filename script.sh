#!/bin/bash

make c-all

make r-sequential rows=1 cols=100000
make r-parallel rows=1 cols=100000 threads=2
make r-threadpool rows=1 cols=100000 threads=2
make r-parallel rows=1 cols=100000 threads=4
make r-threadpool rows=1 cols=100000 threads=4
make r-parallel rows=1 cols=100000 threads=6
make r-threadpool rows=1 cols=100000 threads=6
make r-parallel rows=1 cols=100000 threads=8
make r-threadpool rows=1 cols=100000 threads=8
make r-parallel rows=1 cols=100000 threads=12
make r-threadpool rows=1 cols=100000 threads=12
make r-parallel rows=1 cols=100000 threads=16
make r-threadpool rows=1 cols=100000 threads=16
make r-parallel rows=1 cols=100000 threads=24
make r-threadpool rows=1 cols=100000 threads=24
make r-parallel rows=1 cols=100000 threads=36
make r-threadpool rows=1 cols=100000 threads=36

make r-sequential rows=10 cols=100000
make r-parallel rows=10 cols=100000 threads=2
make r-threadpool rows=10 cols=100000 threads=2
make r-parallel rows=10 cols=100000 threads=4
make r-threadpool rows=10 cols=100000 threads=4
make r-parallel rows=10 cols=100000 threads=6
make r-threadpool rows=10 cols=100000 threads=6
make r-parallel rows=10 cols=100000 threads=8
make r-threadpool rows=10 cols=100000 threads=8
make r-parallel rows=10 cols=100000 threads=12
make r-threadpool rows=10 cols=100000 threads=12
make r-parallel rows=10 cols=100000 threads=16
make r-threadpool rows=10 cols=100000 threads=16
make r-parallel rows=10 cols=100000 threads=24
make r-threadpool rows=10 cols=100000 threads=24
make r-parallel rows=10 cols=100000 threads=36
make r-threadpool rows=10 cols=100000 threads=36

make r-sequential rows=20 cols=100000
make r-parallel rows=20 cols=100000 threads=2
make r-threadpool rows=20 cols=100000 threads=2
make r-parallel rows=20 cols=100000 threads=4
make r-threadpool rows=20 cols=100000 threads=4
make r-parallel rows=20 cols=100000 threads=6
make r-threadpool rows=20 cols=100000 threads=6
make r-parallel rows=20 cols=100000 threads=8
make r-threadpool rows=20 cols=100000 threads=8
make r-parallel rows=20 cols=100000 threads=12
make r-threadpool rows=20 cols=100000 threads=12
make r-parallel rows=20 cols=100000 threads=16
make r-threadpool rows=20 cols=100000 threads=16
make r-parallel rows=20 cols=100000 threads=24
make r-threadpool rows=20 cols=100000 threads=24
make r-parallel rows=20 cols=100000 threads=36
make r-threadpool rows=20 cols=100000 threads=36

make r-sequential rows=30 cols=100000
make r-parallel rows=30 cols=100000 threads=2
make r-threadpool rows=30 cols=100000 threads=2
make r-parallel rows=30 cols=100000 threads=4
make r-threadpool rows=30 cols=100000 threads=4
make r-parallel rows=30 cols=100000 threads=6
make r-threadpool rows=30 cols=100000 threads=6
make r-parallel rows=30 cols=100000 threads=8
make r-threadpool rows=30 cols=100000 threads=8
make r-parallel rows=30 cols=100000 threads=12
make r-threadpool rows=30 cols=100000 threads=12
make r-parallel rows=30 cols=100000 threads=16
make r-threadpool rows=30 cols=100000 threads=16
make r-parallel rows=30 cols=100000 threads=24
make r-threadpool rows=30 cols=100000 threads=24
make r-parallel rows=30 cols=100000 threads=36
make r-threadpool rows=30 cols=100000 threads=36

make r-sequential rows=40 cols=100000
make r-parallel rows=40 cols=100000 threads=2
make r-threadpool rows=40 cols=100000 threads=2
make r-parallel rows=40 cols=100000 threads=4
make r-threadpool rows=40 cols=100000 threads=4
make r-parallel rows=40 cols=100000 threads=6
make r-threadpool rows=40 cols=100000 threads=6
make r-parallel rows=40 cols=100000 threads=8
make r-threadpool rows=40 cols=100000 threads=8
make r-parallel rows=40 cols=100000 threads=12
make r-threadpool rows=40 cols=100000 threads=12
make r-parallel rows=40 cols=100000 threads=16
make r-threadpool rows=40 cols=100000 threads=16
make r-parallel rows=40 cols=100000 threads=24
make r-threadpool rows=40 cols=100000 threads=24
make r-parallel rows=40 cols=100000 threads=36
make r-threadpool rows=40 cols=100000 threads=36

make r-sequential rows=50 cols=100000
make r-parallel rows=50 cols=100000 threads=2
make r-threadpool rows=50 cols=100000 threads=2
make r-parallel rows=50 cols=100000 threads=4
make r-threadpool rows=50 cols=100000 threads=4
make r-parallel rows=50 cols=100000 threads=6
make r-threadpool rows=50 cols=100000 threads=6
make r-parallel rows=50 cols=100000 threads=8
make r-threadpool rows=50 cols=100000 threads=8
make r-parallel rows=50 cols=100000 threads=12
make r-threadpool rows=50 cols=100000 threads=12
make r-parallel rows=50 cols=100000 threads=16
make r-threadpool rows=50 cols=100000 threads=16
make r-parallel rows=50 cols=100000 threads=24
make r-threadpool rows=50 cols=100000 threads=24
make r-parallel rows=50 cols=100000 threads=36
make r-threadpool rows=50 cols=100000 threads=36

make r-sequential rows=60 cols=100000
make r-parallel rows=60 cols=100000 threads=2
make r-threadpool rows=60 cols=100000 threads=2
make r-parallel rows=60 cols=100000 threads=4
make r-threadpool rows=60 cols=100000 threads=4
make r-parallel rows=60 cols=100000 threads=6
make r-threadpool rows=60 cols=100000 threads=6
make r-parallel rows=60 cols=100000 threads=8
make r-threadpool rows=60 cols=100000 threads=8
make r-parallel rows=60 cols=100000 threads=12
make r-threadpool rows=60 cols=100000 threads=12
make r-parallel rows=60 cols=100000 threads=16
make r-threadpool rows=60 cols=100000 threads=16
make r-parallel rows=60 cols=100000 threads=24
make r-threadpool rows=60 cols=100000 threads=24
make r-parallel rows=60 cols=100000 threads=36
make r-threadpool rows=60 cols=100000 threads=36

make r-sequential rows=70 cols=100000
make r-parallel rows=70 cols=100000 threads=2
make r-threadpool rows=70 cols=100000 threads=2
make r-parallel rows=70 cols=100000 threads=4
make r-threadpool rows=70 cols=100000 threads=4
make r-parallel rows=70 cols=100000 threads=6
make r-threadpool rows=70 cols=100000 threads=6
make r-parallel rows=70 cols=100000 threads=8
make r-threadpool rows=70 cols=100000 threads=8
make r-parallel rows=70 cols=100000 threads=12
make r-threadpool rows=70 cols=100000 threads=12
make r-parallel rows=70 cols=100000 threads=16
make r-threadpool rows=70 cols=100000 threads=16
make r-parallel rows=70 cols=100000 threads=24
make r-threadpool rows=70 cols=100000 threads=24
make r-parallel rows=70 cols=100000 threads=36
make r-threadpool rows=70 cols=100000 threads=36

make r-sequential rows=80 cols=100000
make r-parallel rows=80 cols=100000 threads=2
make r-threadpool rows=80 cols=100000 threads=2
make r-parallel rows=80 cols=100000 threads=4
make r-threadpool rows=80 cols=100000 threads=4
make r-parallel rows=80 cols=100000 threads=6
make r-threadpool rows=80 cols=100000 threads=6
make r-parallel rows=80 cols=100000 threads=8
make r-threadpool rows=80 cols=100000 threads=8
make r-parallel rows=80 cols=100000 threads=12
make r-threadpool rows=80 cols=100000 threads=12
make r-parallel rows=80 cols=100000 threads=16
make r-threadpool rows=80 cols=100000 threads=16
make r-parallel rows=80 cols=100000 threads=24
make r-threadpool rows=80 cols=100000 threads=24
make r-parallel rows=80 cols=100000 threads=36
make r-threadpool rows=80 cols=100000 threads=36

make r-sequential rows=90 cols=100000
make r-parallel rows=90 cols=100000 threads=2
make r-threadpool rows=90 cols=100000 threads=2
make r-parallel rows=90 cols=100000 threads=4
make r-threadpool rows=90 cols=100000 threads=4
make r-parallel rows=90 cols=100000 threads=6
make r-threadpool rows=90 cols=100000 threads=6
make r-parallel rows=90 cols=100000 threads=8
make r-threadpool rows=90 cols=100000 threads=8
make r-parallel rows=90 cols=100000 threads=12
make r-threadpool rows=90 cols=100000 threads=12
make r-parallel rows=90 cols=100000 threads=16
make r-threadpool rows=90 cols=100000 threads=16
make r-parallel rows=90 cols=100000 threads=24
make r-threadpool rows=90 cols=100000 threads=24
make r-parallel rows=90 cols=100000 threads=36
make r-threadpool rows=90 cols=100000 threads=36

make r-sequential rows=100 cols=100000
make r-parallel rows=100 cols=100000 threads=2
make r-threadpool rows=100 cols=100000 threads=2
make r-parallel rows=100 cols=100000 threads=4
make r-threadpool rows=100 cols=100000 threads=4
make r-parallel rows=100 cols=100000 threads=6
make r-threadpool rows=100 cols=100000 threads=6
make r-parallel rows=100 cols=100000 threads=8
make r-threadpool rows=100 cols=100000 threads=8
make r-parallel rows=100 cols=100000 threads=12
make r-threadpool rows=100 cols=100000 threads=12
make r-parallel rows=100 cols=100000 threads=16
make r-threadpool rows=100 cols=100000 threads=16
make r-parallel rows=100 cols=100000 threads=24
make r-threadpool rows=100 cols=100000 threads=24
make r-parallel rows=100 cols=100000 threads=36
make r-threadpool rows=100 cols=100000 threads=36

make r-sequential rows=110 cols=100000
make r-parallel rows=110 cols=100000 threads=2
make r-threadpool rows=110 cols=100000 threads=2
make r-parallel rows=110 cols=100000 threads=4
make r-threadpool rows=110 cols=100000 threads=4
make r-parallel rows=110 cols=100000 threads=6
make r-threadpool rows=110 cols=100000 threads=6
make r-parallel rows=110 cols=100000 threads=8
make r-threadpool rows=110 cols=100000 threads=8
make r-parallel rows=110 cols=100000 threads=12
make r-threadpool rows=110 cols=100000 threads=12
make r-parallel rows=110 cols=100000 threads=16
make r-threadpool rows=110 cols=100000 threads=16
make r-parallel rows=110 cols=100000 threads=24
make r-threadpool rows=110 cols=100000 threads=24
make r-parallel rows=110 cols=100000 threads=36
make r-threadpool rows=110 cols=100000 threads=36

make r-sequential rows=120 cols=100000
make r-parallel rows=120 cols=100000 threads=2
make r-threadpool rows=120 cols=100000 threads=2
make r-parallel rows=120 cols=100000 threads=4
make r-threadpool rows=120 cols=100000 threads=4
make r-parallel rows=120 cols=100000 threads=6
make r-threadpool rows=120 cols=100000 threads=6
make r-parallel rows=120 cols=100000 threads=8
make r-threadpool rows=120 cols=100000 threads=8
make r-parallel rows=120 cols=100000 threads=12
make r-threadpool rows=120 cols=100000 threads=12
make r-parallel rows=120 cols=100000 threads=16
make r-threadpool rows=120 cols=100000 threads=16
make r-parallel rows=120 cols=100000 threads=24
make r-threadpool rows=120 cols=100000 threads=24
make r-parallel rows=120 cols=100000 threads=36
make r-threadpool rows=120 cols=100000 threads=36

make r-sequential rows=130 cols=100000
make r-parallel rows=130 cols=100000 threads=2
make r-threadpool rows=130 cols=100000 threads=2
make r-parallel rows=130 cols=100000 threads=4
make r-threadpool rows=130 cols=100000 threads=4
make r-parallel rows=130 cols=100000 threads=6
make r-threadpool rows=130 cols=100000 threads=6
make r-parallel rows=130 cols=100000 threads=8
make r-threadpool rows=130 cols=100000 threads=8
make r-parallel rows=130 cols=100000 threads=12
make r-threadpool rows=130 cols=100000 threads=12
make r-parallel rows=130 cols=100000 threads=16
make r-threadpool rows=130 cols=100000 threads=16
make r-parallel rows=130 cols=100000 threads=24
make r-threadpool rows=130 cols=100000 threads=24
make r-parallel rows=130 cols=100000 threads=36
make r-threadpool rows=130 cols=100000 threads=36

make r-sequential rows=140 cols=100000
make r-parallel rows=140 cols=100000 threads=2
make r-threadpool rows=140 cols=100000 threads=2
make r-parallel rows=140 cols=100000 threads=4
make r-threadpool rows=140 cols=100000 threads=4
make r-parallel rows=140 cols=100000 threads=6
make r-threadpool rows=140 cols=100000 threads=6
make r-parallel rows=140 cols=100000 threads=8
make r-threadpool rows=140 cols=100000 threads=8
make r-parallel rows=140 cols=100000 threads=12
make r-threadpool rows=140 cols=100000 threads=12
make r-parallel rows=140 cols=100000 threads=16
make r-threadpool rows=140 cols=100000 threads=16
make r-parallel rows=140 cols=100000 threads=24
make r-threadpool rows=140 cols=100000 threads=24
make r-parallel rows=140 cols=100000 threads=36
make r-threadpool rows=140 cols=100000 threads=36

make r-sequential rows=150 cols=100000
make r-parallel rows=150 cols=100000 threads=2
make r-threadpool rows=150 cols=100000 threads=2
make r-parallel rows=150 cols=100000 threads=4
make r-threadpool rows=150 cols=100000 threads=4
make r-parallel rows=150 cols=100000 threads=6
make r-threadpool rows=150 cols=100000 threads=6
make r-parallel rows=150 cols=100000 threads=8
make r-threadpool rows=150 cols=100000 threads=8
make r-parallel rows=150 cols=100000 threads=12
make r-threadpool rows=150 cols=100000 threads=12
make r-parallel rows=150 cols=100000 threads=16
make r-threadpool rows=150 cols=100000 threads=16
make r-parallel rows=150 cols=100000 threads=24
make r-threadpool rows=150 cols=100000 threads=24
make r-parallel rows=150 cols=100000 threads=36
make r-threadpool rows=150 cols=100000 threads=36
