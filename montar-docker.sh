#!/bin/bash

docker rm -f redis; \
docker build -t redis-cluster-local . &&
docker run -d -p 6379:6379 --net=host --restart unless-stopped --name redis redis-cluster-local
