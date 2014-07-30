#!/bin/sh

if [ ! -f /etc/mysql/my.cnf ];
then
    echo "installing mysql"

    apt-get update

    echo 'mysql-server mysql-server/root_password password $1' | debconf-set-selections
    echo 'mysql-server mysql-server/root_password_again password $1' | debconf-set-selections

    apt-get install -y --force-yes mysql-server
fi