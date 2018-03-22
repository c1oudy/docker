# docker swarm cluster搭建

## 创建集群

- 准备3台机器，分别修改主机名manager、worker1、worker2
	`vi /ect/sysconfig/network`
	`HOSTNAME=manager/worker1/worker2`
- 配置域名解析
	`vi /etc/hosts`
- 无密码连接
	`ssh-keygen -t rsa`
	`ssh-copy-id -i /root/.ssh/id_rsa.pub root@manager/worker1/worker2`

## 每台安装git/docker/docker-compose
- apt更新
`apt-get update`
- 安装git
`apt-get install -y git-all`
- 安装docker
`curl -fsSL get.docker.com | sh`
- 安装docker-compose
`curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose`
`chmod +x /usr/local/bin/docker-compose`

## 每台机器下载软件和源代码
- 创建项目目录
`mkdir /home/www`
- 下载server/webapp
`cd /home/www`
`git clone https://gitlab.com/quanliren/servers.git`
`git clone https://gitlab.com/quanliren/wanshangpu.git`

## 建立docker swarm集群
- 启动docker swarm
`docker swarm init`
- 进入worker主机，加入集群
`docker swarm join --token=${worker_token}`