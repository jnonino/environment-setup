#!/bin/bash

VAGRANT_VERSION=2.1.2

echo "Installing XMind"
wget https://releases.hashicorp.com/vagrant/$VAGRANT_VERSION/vagrant_$VAGRANT_VERSION_x86_64.deb
dpkg -i vagrant_$VAGRANT_VERSION_x86_64.deb
rm -rf vagrant_$VAGRANT_VERSION_x86_64.deb
