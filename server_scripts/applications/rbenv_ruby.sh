#!/usr/bin/env bash

# Install ruby 2.0.0-p247 with rbenv

# Check if rbenv is installed
if ! which rbenv &> /dev/null; then
  echo "rbenv not found"
  exit 1
fi

# Install dependencies
sudo apt-get -y install build-essential git-core curl libreadline6 libreadline6-dev \
  zlib1g-dev libssl-dev libxslt1-dev libxml2-dev

# Install ruby
rbenv install 2.0.0-p247
rbenv rehash
rbenv global 2.0.0-p247
