# On Boarding

## Password Management
[LastPass | Password Manager, Auto Form Filler, Random Password Generator & Secure Digital Wallet App](https://www.lastpass.com/)

## Docker
* run docker
* build a docker image
* push it into a git repository 
* check out how to use gitlab ci to build a docker image and push it into gitlab docker registry. 
	* registry.gitlab.com/8jiong/biu-express-web:latest
	* dock image pull registry.gitlab.com/8jiong/biu-express-web:latest
	* docker run —rm -p “80:80” registry.gitlab.com/8jiong/biu-express-web:latest
## Docker Swarm
* Swarm Host
* Swarm Slave
更新 管理 docker application. 
* try to run docker swarm in multiple real machine. (Delete them after setup). 
* try to run replica and update image and service. 
* get to understand docker service. 

## Traefik
* integrated good with docker swarm. 
* read how traefik.toml is configured, especially how to setup multiple domain, and it’s sub domain. 
* try to setup multiple domain with traefik 
* see if we can route different traffic into different swarm node or docker instance. 

## WanShangpu
* setup gitlab ci to automatically build docker image based on each commit. 
* gitlab repo is at git@gitlab.com:quanliren/wanshangpu.git
* gitlab-ci.yml
* you probably need to create a build machine in a honkong or US server. 
* setup a shadowsock. 
* download an app -> HyperApp 

## Database
* create an database of mysql and put it into the same zone of our web server

## Portrainer
* try it out. But don’t use it heavily, use command and yml. Once you are very good at it then switch to GUI when needed. 

## Aliyun ECS API
* play with it: [Getting started with Aliyun ECS API · GitHub](https://gist.github.com/dobaduc/f21e98d802616ba2c97d)
