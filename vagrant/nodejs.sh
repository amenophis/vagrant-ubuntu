#!/bin/sh

if [ ! -f /usr/bin/npm ];
then
    echo "installing nodejs"

    apt-get install -y --force-yes nodejs

    update-alternatives --install /usr/bin/node node /usr/bin/nodejs 99
fi