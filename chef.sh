#!/bin/bash

CHEF_VERSION=2.4.17
UBUNTU_VERSION=16.04

wget https://packages.chef.io/files/stable/chefdk/$CHEF_VERSION/ubuntu/$UBUNTU_VERSION/chefdk_$CHEF_VERSION-1_amd64.deb
dpkg -i chefdk_$CHEF_VERSION-1_amd64.deb
rm -rf chefdk_$CHEF_VERSION-1_amd64.deb


