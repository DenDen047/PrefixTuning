#!/bin/bash

CURRENT_PATH=$(pwd)
IMAGE_NAME="denden047/prefix_tuning:latest"

# AcinoSet
docker build -f "$CURRENT_PATH"/docker/Dockerfile -t ${IMAGE_NAME} "$CURRENT_PATH"/docker && \
docker run -it --rm \
    -v "$CURRENT_PATH":/workdir \
    -w /workdir \
    ${IMAGE_NAME} \
    /bin/bash