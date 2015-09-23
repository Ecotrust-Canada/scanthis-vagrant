#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

apt-get -y -qq install postgresql postgresql-contrib

# creating scanthis user and scanthis database
sudo -u postgres psql -c "CREATE USER tuna_processor WITH PASSWORD 'scanthis';"
sudo -u postgres psql -c "ALTER USER tuna_processor SUPERUSER;"
sudo -u postgres createdb -O tuna_processor scanthis
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE scanthis to tuna_processor;"

sudo -u postgres pg_restore -i -d scanthis /vagrant/files/scanthis.dump
