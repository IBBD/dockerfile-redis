#!/bin/bash

docker stop ibbd-redis 
docker rm ibbd-redis 

docker run --name=ibbd-redis -d \
    -p 6379:6379 \
    -v /data/redis:/var/lib/redis \
    -v /var/log/redis:/var/log/redis \
    ibbd/redis

docker ps

