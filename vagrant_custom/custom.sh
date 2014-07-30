#!/bin/sh

echo "---------------------------"
echo "Installing language-pack-fr"
echo "---------------------------"
sudo apt-get install language-pack-fr

echo "----------------------"
echo "Installing php modules"
echo "----------------------"
apt-get install -y --force-yes php5-intl php5-curl php5-ldap

echo "---------------------"
echo "Configure nginx vhost"
echo "---------------------"
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
mv /tmp/etc/nginx/sites-available/default /etc/nginx/sites-available/default
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
service nginx restart

echo "------------------"
echo "Configure ohMyZ.sh"
echo "------------------"
sed -i -e "s/plugins=(\.\*)/plugins=(git symfony2)/g" /home/vagrant/.zshrc
if ! grep -q "cd /var/www" /home/vagrant/.zshrc
then
    echo "cd /var/www" >> /home/vagrant/.zshrc
fi

sed -i -e "s/plugins=(.*)/plugins=(git symfony2)/g" /root/.zshrc
if ! grep -q "cd /var/www" /root/.zshrc
then
    echo "cd /var/www" >> /root/.zshrc
fi

echo "-------------------"
echo "Start ElasticSearch"
echo "-------------------"
sudo service elasticsearch start
