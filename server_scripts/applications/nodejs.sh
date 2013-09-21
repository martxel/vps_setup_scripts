#!/usr/bin/env bash

# Node.js installation script
# sudo dpkg -P node to remove

# Install dependencies
sudo apt-get -y install g++ make checkinstall

# Get latest source
mkdir ~/src && cd $_
wget -N http://nodejs.org/dist/node-latest.tar.gz
tar xzvf node-latest.tar.gz && cd node-v*

# Compile and create .deb package
./configure
NODE_VERSION=`pwd | sed 's/.*-v(.*)//'` # Remove the "v" from version number
checkinstall --pkgversion $NODE_VERSION --default --install=no
unset NODE_VERSION

# Install .deb package
sudo dpkg -i node_*
