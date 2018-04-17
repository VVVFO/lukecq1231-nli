#!/bin/bash

# GPU
export THEANO_FLAGS='mode=FAST_RUN,device=gpu0,floatX=float32,optimizer_including=cudnn,warn_float64=warn,lib.cnmem=0.9,nvcc.flags=-D_FORCE_INLINES'

# CPU
# export THEANO_FLAGS='mode=FAST_RUN,device=cpu,floatX=float32'

python -u ./train.py 2>&1 | tee log.txt




