#!/bin/bash
# 
# 运行：
# cp ./run.sh.example ./run.sh
# sudo ./run.sh
# 

#-----------------------------------
# ----- 配置目录  BEGIN ------------
#-----------------------------------

# 数据目录
data_path=/data/redis

# 日志目录
logs_path=/var/log/redis

#-----------------------------------
# ----- 配置目录  END --------------
#-----------------------------------

current_path=$(pwd)
if [ ! -f $current_path/conf/redis.conf ]
then
    echo "ERROR: $current_path is error."
    exit 1
fi

docker stop ibbd-redis 
docker rm ibbd-redis 

# 挂载日志目录的时候，就无法写入数据
# 配置文件移到了这里指定，放在dockerfile有问题，原因未明
docker run --name=ibbd-redis -d \
    -p 6379:6379 \
    -v /data/redis:/data \
    -v /var/log/redis:/var/log/redis \
    -v $current_path/conf/redis.conf:/etc/redis/redis.conf:ro \
    ibbd/redis \
    redis-server /etc/redis/redis.conf

docker ps

