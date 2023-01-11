#!/bin/bash

docker rm -f redis; \
docker build -t redis-cluster-local . &&
docker run -d -p 6379:6379 -v redis.conf:/usr/local/etc/redis/redis.conf --net=host --restart unless-stopped redis-cluster-local  --name redis redis-server /usr/local/etc/redis/redis.conf
