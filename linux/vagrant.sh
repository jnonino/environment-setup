#!/bin/bash

VAGRANT_VERSION=2.2.4

echo "Installing Vagrant"
wget https://releases.hashicorp.com/vagrant/${VAGRANT_VERSION}/vagrant_${VAGRANT_VERSION}_x86_64.deb
dpkg -i vagrant_${VAGRANT_VERSION}_x86_64.deb
rm -rf vagrant_${VAGRANT_VERSION}_x86_64.deb
