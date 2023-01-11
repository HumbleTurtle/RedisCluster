#!/bin/bash

docker rm -f redis; \
docker build -t redis-cluster-local . &&
docker run -d -p 6379:6379 --name redis --restart unless-stopped redis-cluster-local