#!/bin/sh

if [ ! -f /usr/bin/composer ];
then
    echo "installing composer"

    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/bin/composer
fi