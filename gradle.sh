#!/bin/bash

GRADLE_VERSION=4.8.1

echo "Install Gradle"

wget https://downloads.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip
unzip gradle-$GRADLE_VERSION-bin.zip
rm -rf gradle-$GRADLE_VERSION-bin.zip
mv gradle-$GRADLE_VERSION /opt/gradle
mkdir /opt/gradle/wrapper
chmod 777 /opt/gradle/wrapper

echo "export GRADLE_HOME=/opt/gradle" >> /etc/profile.d/gradle.sh
echo "export PATH=\$PATH:\$GRADLE_HOME/bin:\$GRADLE_HOME/lib" >> /etc/profile.d/gradle.sh
chmod +x /etc/profile.d/gradle.sh
