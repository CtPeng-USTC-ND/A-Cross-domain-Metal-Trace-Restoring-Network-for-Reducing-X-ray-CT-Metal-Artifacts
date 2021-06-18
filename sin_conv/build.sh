#!/usr/bin/env bash

CUDA_PATH=/usr/local/cuda/

cd src/cuda
echo "Compiling my_lib kernels by nvcc..."
nvcc -c -o sin_conv_kernel.cu.o sin_conv_kernel.cu -x cu -Xcompiler -fPIC -arch=sm_52

cd ../../

python build.py