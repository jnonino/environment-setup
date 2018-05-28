#!/bin/bash

TERRAFORM_VERSION=0.11.7

echo "Installing Terraform"

wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip
rm -rf terraform_${TERRAFORM_VERSION}_linux_amd64.zip
mkdir -p /opt/terraform
mv terraform /opt/terraform/

echo "export TERRAFORM_HOME=/opt/terraform" >> /etc/profile.d/terraform.sh
echo "export PATH=\$PATH:\$TERRAFORM_HOME" >> /etc/profile.d/terraform.sh
chmod +x /etc/profile.d/terraform.sh
