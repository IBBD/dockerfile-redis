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

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
  
# 解决时区问题
ENV TZ "Asia/Shanghai"

# 终端设置
# 默认值是dumb，这时在终端操作时可能会出现：terminal is not fully functional
ENV TERM xterm

EXPOSE 6379
