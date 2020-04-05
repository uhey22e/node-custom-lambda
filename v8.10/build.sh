#!/bin/sh

. ./config.sh

docker build --build-arg NODE_VERSION -t node-provided-lambda-v8.10 .
docker run --rm -v "$PWD":/app node-provided-lambda-v8.10 cp /tmp/layer.zip /app/
