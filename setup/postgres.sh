#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

apt-get -y -qq install postgresql postgresql-contrib

# creating scanthis user and scanthis database
sudo -u postgres psql -c "CREATE USER scanthis WITH PASSWORD 'scanthis';"
sudo -u postgres psql -c "ALTER USER scanthis SUPERUSER;"
sudo -u postgres createdb -O scanthis scanthis
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE scanthis to scanthis;"
