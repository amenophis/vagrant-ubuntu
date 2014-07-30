#!/bin/sh

if [ ! -f /usr/bin/npm ];
then
    echo "installing npm"

    apt-get install -y --force-yes npm
fi