#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

# update OS and setup language
apt-get -y -qq update
apt-get -y -qq upgrade
apt-get -y -qq dist-upgrade
apt-get -y -qq install build-essential
apt-get -y -qq install language-pack-en debconf-utils
