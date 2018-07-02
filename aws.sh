#!/bin/bash

echo "Installing Python 3"
apt-get -y update
apt-get -y upgrade
apt-get install -y python3 python3-pip

echo "Installing AWS Cli"
pip install awscli --upgrade --user

echo "export PATH=~/.local/bin:\$PATH" >> /etc/profile.d/aws.sh
chmod +x /etc/profile.d/aws.sh
