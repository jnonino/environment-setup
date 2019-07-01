#!/bin/bash

echo "Installing Ansible"
apt-get -y update
apt-get install -y software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get -y update
apt-get install -y ansible
