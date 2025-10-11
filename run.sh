#!/bin/bash

make c-all
make r-sequential rows=1 cols=1000
make r-parallel rows=1 cols=1000 threads=1
make r-threadpool rows=1 cols=1000 threads=1
