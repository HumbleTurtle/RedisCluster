#!/bin/bash

docker cp redis.conf redis:/usr/local/etc/redis/redis.conf
docker restart redis