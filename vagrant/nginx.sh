#!/bin/sh

if [ ! -f /etc/nginx/nginx.conf ];
then
    echo "installing nginx"
    apt-get update

    apt-get install -y --force-yes nginx
fi