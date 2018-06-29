#!/bin/bash

export OMP_NUM_THREADS=4

source ./path.cfg

export PYTHONPATH=${PYTHONPATH}:${CHAINER}
export CHAINER_DATASET_ROOT=${DATASET_PATH}
export CHAINERPATH=${CHAINER}

EPOCHS=1
GPU=-1
MODEL="mnist"
PROGRAM=${CHAINER}/examples/${MODEL}/train_${MODEL}.py

# export CHAINER_USE_IDEEP=auto
/usr/bin/time \
    python ${PROGRAM} \
    --gpu=${GPU} \
    --epoch=${EPOCHS}
