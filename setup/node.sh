#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

cd /home/vagrant/

# install nvm
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.26.1/install.sh | bash

# activate nvm environment
. /home/vagrant/.nvm/nvm.sh

# nvm install
nvm install 4.0.0
nvm alias default 4.0.0

# use new node version
nvm use default

# add .bashrc settings to automaticly use our nvm
cat /vagrant/files/.bashrc >> /home/vagrant/.bashrc

# install npm
cd /opt/scanthis/
npm install

# install global npm dependencies
npm install -g nodemon
