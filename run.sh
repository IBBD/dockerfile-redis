#!/bin/bash

docker stop ibbd-redis 
docker rm ibbd-redis 

# 挂载日志目录的时候，就无法写入数据
# 配置文件移到了这里指定，放在dockerfile有问题，原因未明
docker run --name=ibbd-redis -d \
    -p 6379:6379 \
    -v /data/redis:/data \
    -v /var/log/redis:/var/log/redis \
    -v conf/redis.conf:/etc/redis/redis.conf \
    ibbd/redis \
    redis-server /etc/redis/redis.conf

docker ps

