#!/bin/bash

# Install Docker
apt-get -y update
apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get -y update
apt-get install -y docker-ce
groupadd docker
usermod -aG docker $USER
chown "$USER":"$USER" /home/"$USER"/.docker -R
chmod g+rwx "/home/$USER/.docker" -R
systemctl enable docker

# Install Docker Compose
curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

