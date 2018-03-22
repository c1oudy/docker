#########init env

# update apt
apt-get update

# install git
apt-get install -y git

# install docker
curl -fsSL get.docker.com | sh

# install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
# change mod of docker-compose
chmod +x /usr/local/bin/docker-compose

# mkdir /home/www
mkdir /home/www

# git clone servers
cd /home/www
git clone https://gitlab.com/quanliren/servers.git
git clone https://gitlab.com/quanliren/wanshangpu.git
# build and run server
cd /home/www/servers

# build webApp
cd php-docker
./build.sh
cd ..

chmod +x *