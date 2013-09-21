#!/usr/bin/env bash

# rbenv installation script

# Install dependencies
sudo apt-get -y install git-core

# Install rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

# Install ruby-build as a plugin
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# Restart shell
exec $SHELL -l
