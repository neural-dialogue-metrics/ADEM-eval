#!/usr/bin/env bash

IMAGE=cgsdfc/adem-1-master:latest
PROJECT_PATH=/home/cgsdfc/deployment/Metrics/AutoTuring/ADEM-1-master

docker run --runtime nvidia --rm -it \
    -v $PROJECT_PATH:$PROJECT_PATH \
    -w $PROJECT_PATH \
    -e PYTHONPATH=$PROJECT_PATH \
    $IMAGE bash
