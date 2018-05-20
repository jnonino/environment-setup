#!/bin/bash

# Install Ant
ANT_VERSION=1.10.3
echo "Installing Ant"
wget https://www.apache.org/dist/ant/binaries/apache-ant-$ANT_VERSION-bin.tar.gz
tar -zxvf apache-ant-$ANT_VERSION-bin.tar.gz
rm -rf apache-ant-$ANT_VERSION-bin.tar.gz
mv apache-ant-$ANT_VERSION /opt/ant
echo "export ANT_HOME=/opt/ant" >> /etc/profile.d/build_tools.sh
echo "export PATH=\$PATH:\$ANT_HOME/bin:\$ANT_HOME/lib" >> /etc/profile.d/build_tools.sh

# Install Maven
MAVEN_VERSION=3.5.3
echo "Install Maven"
wget http://apache.dattatec.com/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz
tar -zxvf apache-maven-$MAVEN_VERSION-bin.tar.gz
rm -rf apache-maven-$MAVEN_VERSION-bin.tar.gz
mv apache-maven-$MAVEN_VERSION /opt/maven
echo "export MAVEN_HOME=/opt/maven" >> /etc/profile.d/build_tools.sh
echo "export PATH=\$PATH:\$MAVEN_HOME/bin:\$MAVEN_HOME/lib" >> /etc/profile.d/build_tools.sh

# Install Gradle
GRADLE_VERSION=4.7
echo "Install Gradle" && \
wget https://downloads.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip
unzip gradle-$GRADLE_VERSION-bin.zip
rm -rf gradle-$GRADLE_VERSION-bin.zip
mv gradle-$GRADLE_VERSION /opt/gradle
echo "export GRADLE_HOME=/opt/gradle" >> /etc/profile.d/build_tools.sh
echo "export PATH=\$PATH:\$GRADLE_HOME/bin:\$GRADLE_HOME/lib" >> /etc/profile.d/build_tools.sh
