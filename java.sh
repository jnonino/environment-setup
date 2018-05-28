#!/bin/bash

echo "Installing Java JDK"

wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/10.0.1+10/fb4372174a714e6b8c52526dc134031e/jdk-10.0.1_linux-x64_bin.tar.gz
tar -zxvf jdk-10.0.1_linux-x64_bin.tar.gz
rm -rf jdk-10.0.1_linux-x64_bin.tar.gz
mv jdk-10.0.1 /opt/java

echo "export JAVA_HOME=/opt/java" >> /etc/profile.d/java.sh
echo "export PATH=\$PATH:\$JAVA_HOME/bin:\$JAVA_HOME/lib" >> /etc/profile.d/java.sh
chmod +x /etc/profile.d/java.sh
