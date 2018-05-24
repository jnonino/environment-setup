#!/bin/bash

GROOVY_VERSION=2.4.15

echo "Installing Groovy SDK"

wget https://bintray.com/artifact/download/groovy/maven/apache-groovy-binary-$GROOVY_VERSION.zip
unzip apache-groovy-binary-$GROOVY_VERSION.zip
rm -rf apache-groovy-binary-$GROOVY_VERSION.zip
mv groovy-$GROOVY_VERSION /opt/groovy

echo "export GROOVY_HOME=/opt/groovy" >> /etc/profile.d/groovy.sh
echo "export PATH=\$PATH:\$GROOVY_HOME/bin:\$GROOVY_HOME/lib" >> /etc/profile.d/groovy.sh
chmod +x /etc/profile.d/groovy.sh
