#!/bin/bash

docker rm -f redis
docker build -t RedisCluster .
docker run -d -p 6379:6379 --name redis --restart unless-stopped RedisCluster