#!/bin/bash

cd /usr/local/bin/

# Download and extract postgrest
wget https://github.com/begriffs/postgrest/releases/download/v0.2.11.1/postgrest-0.2.11.1-linux.tar.xz
tar -xf postgrest-0.2.11.1-linux.tar.xz
rm postgrest-0.2.11.1-linux.tar.xz

# Make postgrest accessible by vagrant user
ln -s postgrest-0.2.11.1 postgrest
ln -s /vagrant/scripts/rest rest

sudo chown -R vagrant postgrest-0.2.11.1
sudo chown -R vagrant postgrest

# Copy rest script that runs postgrest with all the settings to /usr/local/bin/
cp /vagrant/scripts/rest .
sudo chmod 700 rest
sudo chown -R vagrant rest
