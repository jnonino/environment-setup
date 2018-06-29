#!/bin/bash

GO_VERSION=1.10.3

echo "Install Go"

wget https://dl.google.com/go/go$GO_VERSION.linux-amd64.tar.gz
tar -zxvf go$GO_VERSION.linux-amd64.tar.gz
rm -rf go$GO_VERSION.linux-amd64.tar.gz
mv go /opt/go

echo "export GO_HOME=/opt/go" >> /etc/profile.d/go.sh
echo "export PATH=\$PATH:\$GO_HOME/bin:\$GO_HOME/lib" >> /etc/profile.d/go.sh
chmod +x /etc/profile.d/go.sh

