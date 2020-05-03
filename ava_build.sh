#!/bin/bash

# Build requires cmake >= 3.13
# sudo snap install cmake --channel=3.15/stable --classic
# https://askubuntu.com/a/829311/321022

./build.sh --config RelWithDebInfo --parallel --build_wheel \
    --use_cuda \
    --cuda_home /usr/local/cuda-10.1 \
    --cudnn_home /usr/local/cuda-10.1
