#!/bin/sh

# If phpmyadmin does not exist
if [ ! -f /etc/phpmyadmin/config.inc.php ];
then
    echo "installing phpmyadmin"

    apt-get update

    /usr/share/debconf/fix_db.pl

debconf-set-selections <<EOF
	phpmyadmin phpmyadmin/app-password-confirm password
	phpmyadmin phpmyadmin/dbconfig-install boolean true
	phpmyadmin phpmyadmin/mysql/admin-pass password $1
	phpmyadmin phpmyadmin/mysql/app-pass password
	phpmyadmin phpmyadmin/reconfigure-webserver multiselect none
EOF

	apt-get -y install phpmyadmin
fi