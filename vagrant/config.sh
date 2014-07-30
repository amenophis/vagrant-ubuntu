#!/bin/sh

apt-get update

echo "installing php modules"
apt-get install -y --force-yes php5-intl php5-curl php5-ldap

echo "configure nginx vhost"
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
mv /tmp/etc/nginx/sites-available/default /etc/nginx/sites-available/default
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
echo "restart nginx server"
service nginx restart

echo "configure ohMyZ.sh"
sed -i -e "s/plugins=(git)/plugins=(git symfony2)/g" /home/vagrant/.zshrc
if [ ! grep -q "cd /var/www" /home/vagrant/.zshrc ]
then
    echo "cd /var/www" >> /home/vagrant/.zshrc
fi

sed -i -e "s/plugins=(git)/plugins=(git symfony2)/g" /root/.zshrc
if [ ! grep -q "cd /var/www" /root/.zshrc ]
then
    echo "cd /var/www" >> /root/.zshrc
fi

sudo service elasticsearch start