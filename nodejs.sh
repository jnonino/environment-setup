#!/bin/bash

NODEJS_VERSION=v10.10.0

wget https://nodejs.org/dist/${NODEJS_VERSION}/node-${NODEJS_VERSION}-linux-x64.tar.xz
tar -xJf node-${NODEJS_VERSION}-linux-x64.tar.xz -C /usr/local --strip-components=1
rm node-${NODEJS_VERSION}-linux-x64.tar.xz
