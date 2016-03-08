#!/bin/bash
echo "[Packer] ${ROLE} install packages start"

# install packages
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y dstat sysstat mysql-client redis-tools ruby openssl
sudo apt-get remove -y nano

# install awscli
sudo apt-get -y install python-pip
sudo pip install awscli

echo "[Packer] ${ROLE} install packages done"
