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
#RUN mkdir -p /var/log/redis
#RUN chown -R redis:redis /var/log/redis
#VOLUME ["/var/log/redis"]
#VOLUME /var/lib/redis

# 使用自定义配置文件
#COPY conf/redis.conf /usr/local/etc/redis/redis.conf
#COPY conf/redis.conf /etc/redis/redis.conf

#CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]

EXPOSE 6379

