#!/bin/bash

MAVEN_VERSION=3.6.1

echo "Install Maven"

wget http://apache.dattatec.com/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz
tar -zxvf apache-maven-$MAVEN_VERSION-bin.tar.gz
rm -rf apache-maven-$MAVEN_VERSION-bin.tar.gz
mv apache-maven-$MAVEN_VERSION /opt/maven

echo "export MAVEN_HOME=/opt/maven" >> /etc/profile.d/maven.sh
echo "export PATH=\$PATH:\$MAVEN_HOME/bin:\$MAVEN_HOME/lib" >> /etc/profile.d/maven.sh
chmod +x /etc/profile.d/maven.sh
