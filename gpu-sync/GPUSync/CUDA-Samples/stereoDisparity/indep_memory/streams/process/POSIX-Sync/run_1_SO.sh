#!/bin/bash
for i in `seq 1 1`;
do
    LD_PRELOAD=/home/ubuntu/GM/Locks/POSIX_Locks/libcudart_wrapper.so ../stereoDisparity $1 2>>log &
done
