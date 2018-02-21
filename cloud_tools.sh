#!/bin/bash


########################################################################################################################################
### DOCKER
########################################################################################################################################
# Install Docker
apt-get remove docker docker-engine docker.io
apt-get update
apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-get install docker-ce
groupadd docker
usermod -aG docker $USER
chown "$USER":"$USER" /home/"$USER"/.docker -R
chmod g+rwx "/home/$USER/.docker" -R
systemctl enable docker
# Install Docker Compose
curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

########################################################################################################################################
### TERRAFORM
########################################################################################################################################
# Install Terraform
TERRAFORM_VERSION=0.11.3
echo "Installing Terraform"
wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip
rm -rf terraform_${TERRAFORM_VERSION}_linux_amd64.zip
mkdir -p /opt/terraform
mv terraform /opt/terraform/
# Add to PATH variable
echo "export TERRAFORM_HOME=/opt/terraform" >> /etc/profile.d/cloud_tools.sh
echo "export PATH=$PATH:$TERRAFORM_HOME" >> /etc/profile.d/cloud_tools.sh

########################################################################################################################################
### Kubernetes
########################################################################################################################################
# Install kubectl
LATEST_VERSION=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)
KUBECTL_VERSION=v1.9.3
echo "Installing kubectl"
curl -LO https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl
chmod +x ./kubectl
mkdir -p /opt/kubernetes
mv kubectl /opt/kubernetes/
# Install minikube
MINIKUBE_VERSION=v0.25.0
echo "Installing minikube"
curl -Lo minikube https://storage.googleapis.com/minikube/releases/${MINIKUBE_VERSION}/minikube-linux-amd64
chmod +x minikube
mv minikube /opt/kubernetes/
# Install kompose
KOMPOSE_VERSION=v1.9.0
echo "Installing kompose"
curl -L https://github.com/kubernetes/kompose/releases/download/${KOMPOSE_VERSION}/kompose-linux-amd64 -o kompose
chmod +x kompose
mv kompose /opt/kubernetes/
# Add to PATH variable
echo "export KUBERNETES_HOME=/opt/kubernetes" >> /etc/profile.d/cloud_tools.sh
echo "export PATH=$PATH:$KUBERNETES_HOME" >> /etc/profile.d/cloud_tools.sh