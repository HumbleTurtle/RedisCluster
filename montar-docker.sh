#!/bin/bash

docker cp redis.conf redis:/etc/redis.conf
docker restart redis