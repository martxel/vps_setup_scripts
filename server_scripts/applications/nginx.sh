#!/usr/bin/env bash

# nginx installation script

# Add nginx repository
wget --quiet -O - http://nginx.org/keys/nginx_signing.key | sudo apt-key add -
sudo sh -c "echo 'deb http://nginx.org/packages/debian/ wheezy nginx' > /etc/apt/sources.list.d/nginx.list"
sudo apt-get -y update

# Install nginx
sudo apt-get -y install nginx
