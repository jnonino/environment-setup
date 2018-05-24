#!/bin/bash

echo "Installing Postman"

curl -L https://dl.pstmn.io/download/latest/linux64 -o postman.tar.gz
tar -xzvf postman.tar.gz
rm -rf postman.tar.gz
mv Postman /opt

echo "export POSTMAN_HOME=/opt/Postman" >> /etc/profile.d/postman.sh
echo "export PATH=\$PATH:\$POSTMAN_HOME" >> /etc/profile.d/postman.sh
chmod +x /etc/profile.d/postman.sh
