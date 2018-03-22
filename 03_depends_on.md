# 启动依赖

## 启动redis
- 编写redis.yml
- 启动redis
`docker stack deploy redis -c redis.yml`

## 启动memcached
- 编写memcached.yml
- 启动memcached
`docker stack deploy memcached -c memcached.yml`