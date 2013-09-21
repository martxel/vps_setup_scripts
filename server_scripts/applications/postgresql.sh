#!/usr/bin/env bash

# PostgreSQL installation script

# Add PostgreSQL repository
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ wheezy-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
sudo apt-get -y update

# Install PostgreSQL
sudo apt-get -y install postgresql
