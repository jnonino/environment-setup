#!/bin/bash

mkdir /opt/kubernetes/

# Install kubectl
apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
touch /etc/apt/sources.list.d/kubernetes.list 
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
apt-get update
apt-get install -y kubectl

# Install minikube
MINIKUBE_VERSION=latest
echo "Installing minikube"
curl -Lo minikube https://storage.googleapis.com/minikube/releases/${MINIKUBE_VERSION}/minikube-linux-amd64
chmod +x minikube
mv minikube /opt/kubernetes/

# Install kompose
KOMPOSE_VERSION=v1.18.0
echo "Installing kompose"
curl -L https://github.com/kubernetes/kompose/releases/download/${KOMPOSE_VERSION}/kompose-linux-amd64 -o kompose
chmod +x kompose
mv kompose /opt/kubernetes/

# Add to PATH variable
echo "export KUBERNETES_HOME=/opt/kubernetes" >> /etc/profile.d/kubernetes.sh
echo "export PATH=\$PATH:\$KUBERNETES_HOME" >> /etc/profile.d/kubernetes.sh
chmod +x /etc/profile.d/kubernetes.sh
