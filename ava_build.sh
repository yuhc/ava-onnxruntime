#!/bin/bash

# Build requires cmake >= 3.13
# python3 -m pip install cmake==3.16.5

./build.sh --config RelWithDebInfo --parallel --build_wheel \
    --use_cuda \
    --cuda_home /usr/local/cuda-10.1 \
    --cudnn_home /usr/local/cuda-10.1
