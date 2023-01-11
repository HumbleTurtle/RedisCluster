#!/bin/bash

docker rm -f redis; \
docker build -t redis-cluster-local . &&
docker run -d -p 6379:6379 --net=host --restart unless-stopped redis-cluster-local  --name redis-cluster-local redis-server /usr/local/etc/redis/redis.conf
