#!/usr/bin/env bash

IMAGE=ufoym/deepo:theano-py36-cu90

PROJECT_PATH=/home/cgsdfc/deployment/Metrics/AutoTuring/ADEM-1-master

docker run --runtime nvidia --rm -it \
    -v $PROJECT_PATH:$PROJECT_PATH \
    -w $PROJECT_PATH \
    -e PYTHONPATH=$PROJECT_PATH \
    $IMAGE bash
