#!/bin/bash

# 清除已有的
docker stop ibbd-redis 
docker rm ibbd-redis 
docker rmi ibbd/redis 

# 重新生成
docker build -t ibbd/redis ./

