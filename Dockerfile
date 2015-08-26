#
# Redis Dockerfile
#
# https://github.com/ibbd/dockerfile-redis
#
# sudo docker build -t ibbd/redis ./
#

# Pull base image.
FROM redis:latest

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# Define mountable directories.
VOLUME ["/data/redis", "/var/log/redis"]

# 使用自定义配置文件
#COPY redis.conf /usr/local/etc/redis/redis.conf

CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]

EXPOSE 6379

