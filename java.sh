#!/bin/bash

echo "Installing Java JDK"

wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/otn-pub/java/jdk/12.0.1+12/69cfe15208a647278a19ef0990eea691/jdk-12.0.1_linux-x64_bin.tar.gz
tar -zxvf jdk-12.0.1_linux-x64_bin.tar.gz
rm -rf jdk-12.0.1_linux-x64_bin.tar.gz
mv jdk-12.0.1 /opt/java

echo "export JAVA_HOME=/opt/java" >> /etc/profile.d/java.sh
echo "export PATH=\$PATH:\$JAVA_HOME/bin:\$JAVA_HOME/lib" >> /etc/profile.d/java.sh
chmod +x /etc/profile.d/java.sh
