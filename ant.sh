#!/bin/bash

ANT_VERSION=1.10.4

echo "Installing Ant"

wget https://www.apache.org/dist/ant/binaries/apache-ant-$ANT_VERSION-bin.tar.gz
tar -zxvf apache-ant-$ANT_VERSION-bin.tar.gz
rm -rf apache-ant-$ANT_VERSION-bin.tar.gz
mv apache-ant-$ANT_VERSION /opt/ant

echo "export ANT_HOME=/opt/ant" >> /etc/profile.d/ant.sh
echo "export PATH=\$PATH:\$ANT_HOME/bin:\$ANT_HOME/lib" >> /etc/profile.d/ant.sh
chmod +x /etc/profile.d/ant.sh
