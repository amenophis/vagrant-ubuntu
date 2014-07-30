#!/bin/sh

if [ ! -f /usr/local/bin/bower ]
then
    echo "installing bower"

    npm install -g bower
fi