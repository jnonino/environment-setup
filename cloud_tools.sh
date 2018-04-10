#!/bin/bash

########################################################################################################################################
### TERRAFORM
########################################################################################################################################
# Install Terraform
TERRAFORM_VERSION=0.11.7
echo "Installing Terraform"
wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip
rm -rf terraform_${TERRAFORM_VERSION}_linux_amd64.zip
mkdir -p /opt/terraform
mv terraform /opt/terraform/
# Add to PATH variable
echo "export TERRAFORM_HOME=/opt/terraform" >> /etc/profile.d/cloud_tools.sh
echo "export PATH=\$PATH:\$TERRAFORM_HOME" >> /etc/profile.d/cloud_tools.sh

########################################################################################################################################
### Kubernetes
########################################################################################################################################
# Install kubectl
LATEST_VERSION=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)
KUBECTL_VERSION=v1.10.0
echo "Installing kubectl"
curl -LO https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl
chmod +x ./kubectl
mkdir -p /opt/kubernetes
mv kubectl /opt/kubernetes/
# Install minikube
MINIKUBE_VERSION=v0.25.2
echo "Installing minikube"
curl -Lo minikube https://storage.googleapis.com/minikube/releases/${MINIKUBE_VERSION}/minikube-linux-amd64
chmod +x minikube
mv minikube /opt/kubernetes/
# Install kompose
KOMPOSE_VERSION=v1.11.0
echo "Installing kompose"
curl -L https://github.com/kubernetes/kompose/releases/download/${KOMPOSE_VERSION}/kompose-linux-amd64 -o kompose
chmod +x kompose
mv kompose /opt/kubernetes/
# Add to PATH variable
echo "export KUBERNETES_HOME=/opt/kubernetes" >> /etc/profile.d/cloud_tools.sh
echo "export PATH=\$PATH:\$KUBERNETES_HOME" >> /etc/profile.d/cloud_tools.sh
