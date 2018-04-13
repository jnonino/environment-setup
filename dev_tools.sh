#!/bin/bash

########################################################################################################################################
### Java
########################################################################################################################################
echo "Installing Java JDK"
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/10+46/76eac37278c24557a3c4199677f19b62/jdk-10_linux-x64_bin.tar.gz
tar -zxvf jdk-10_linux-x64_bin.tar.gz
rm -rf jdk-10_linux-x64_bin.tar.gz
mv jdk1.8.0_162 /opt/java
echo "export JAVA_HOME=/opt/java" >> /etc/profile.d/dev_tools.sh
echo "export PATH=\$PATH:\$JAVA_HOME/bin:\$JAVA_HOME/lib" >> /etc/profile.d/dev_tools.sh

########################################################################################################################################
### Postman
########################################################################################################################################
echo "Installing Postman"
curl -L https://dl.pstmn.io/download/latest/linux64 -o postman.tar.gz
tar -xzvf postman.tar.gz
rm -rf postman.tar.gz
mv Postman /opt
echo "export POSTMAN_HOME=/opt/Postman" >> /etc/profile.d/dev_tools.sh
echo "export PATH=\$PATH:\$POSTMAN_HOME" >> /etc/profile.d/dev_tools.sh

########################################################################################################################################
### Node.js
########################################################################################################################################
NODEJS_VERSION=v9.5.0
wget https://nodejs.org/dist/${NODEJS_VERSION}/node-${NODEJS_VERSION}-linux-x64.tar.xz
tar -xJf node-${NODEJS_VERSION}-linux-x64.tar.xz -C /usr/local --strip-components=1
rm node-${NODEJS_VERSION}-linux-x64.tar.xz

########################################################################################################################################
### Python
########################################################################################################################################
apt-get -y update
apt-get -y upgrade
apt-get install -y python2.7 python-pip
apt-get install -y python3 python3-pip