#!/bin/bash
set -e


# Install postgresql server
apt-get install libreadline-dev
wget https://ftp.postgresql.org/pub/source/v11.5/postgresql-11.5.tar.gz
tar -zxvf postgresql-11.5.tar.gz 
cd postgresql-11.5
./configure
make
make install

cd ..
# Install libpqxx, postgre client API c++ binding
git clone https://github.com/jtv/libpqxx.git
cd libpqxx/
mkdir build && cd build
cmake cmake -DCMAKE_PREFIX_PATH=/usr/local/pgsql ..
sudo make install

cd ../..
rm -r postgresql-11.5 libqxx
rm postgresql-11.5.tar.gz 

chmod -R 777 /usr/local/pgsql


/usr/local/pgsql/bin/initdb -D ~/db_data/pgdata --username=postgres --pwfile=./settings/postgres_pw.txt

#WARNING: enabling "trust" authentication for local connections
#You can change this by editing pg_hba.conf or using the option -A, or
#--auth-local and --auth-host, the next time you run initdb.
#
#Success. You can now start the database server using:
#
/usr/local/pgsql/bin/pg_ctl -D /home/lenty/db_data/pgdata -l /tmp/logfile start
#
# You can use pgadmin3 to configure database
# /usr/local/pgsql/createdb to create database
# /usr/local/pgsql/psql [db name] to connect to database
