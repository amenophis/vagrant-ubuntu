#!/bin/sh

if [ ! -f /usr/local/bin/grunt ]
then
    echo "installing grunt"

    npm install -g grunt-cli
fi