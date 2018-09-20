#!/bin/bash

echo "Installing Java JDK"

wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/10.0.2+13/19aef61b38124481863b1413dce1855f/jdk-10.0.2_linux-x64_bin.tar.gz
tar -zxvf jdk-10.0.2_linux-x64_bin.tar.gz
rm -rf jdk-10.0.2_linux-x64_bin.tar.gz
mv jdk-10.0.2 /opt/java

echo "export JAVA_HOME=/opt/java" >> /etc/profile.d/java.sh
echo "export PATH=\$PATH:\$JAVA_HOME/bin:\$JAVA_HOME/lib" >> /etc/profile.d/java.sh
chmod +x /etc/profile.d/java.sh
