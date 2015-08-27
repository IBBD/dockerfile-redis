# Redis dockerfile

## Redis默认配置

- 日志目录：/var/log/redis
- 数据目录：/var/lib/redis


## 踩过的坑

一直报日志文件没有写入权限的问题。。

```
2015-08-27T02:19:28.489154384Z 
2015-08-27T02:19:28.489222942Z *** FATAL CONFIG FILE ERROR ***
2015-08-27T02:19:28.489375429Z Reading the configuration file, at line 94
2015-08-27T02:19:28.489398191Z >>> 'logfile /var/log/redis/redis-server.log'
2015-08-27T02:19:28.489408369Z Can't open the log file: Permission denied
```

运行时，不挂载 `-v /var/log/redis:/var/log/redis` 这个，就不会输出没有权限操作日志文件， 但是服务还是没有正常的启动。

把配置文件也放到run中指定时，能正常运行。


