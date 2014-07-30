# vagrant-ubuntu

Ubuntu vagrant for dev environment with some provision scripts

## bower.sh
Install bower via npm
> Needs: nodejs, npm
  
`config.vm.provision "shell", path: "vagrant/bower.sh"`

## composer.sh
Install composer
> Needs: php-cli
`config.vm.provision "shell", path: "vagrant/composer.sh"`

## elasticsearch.sh
Install elasticsearch (Install JAVA)

###Parameters
1. version

`config.vm.provision "shell", path: "vagrant/elasticsearch.sh", args: ["1.3.1"]`

## git.sh
Install git
`config.vm.provision "shell", path: "vagrant/git.sh"`

## grunt.sh
Install grunt via npm

> Needs: nodejs, npm

`config.vm.provision "shell", path: "vagrant/grunt.sh"`

## init.sh
Run apt-get update
`config.vm.provision "shell", path: "vagrant/init.sh"`

## mysql.sh
Install mysql

###Parameters
1. root password

`config.vm.provision "shell", path: "vagrant/mysql.sh", args: ["root"]`

## nginx.sh
Install nginx

`config.vm.provision "shell", path: "vagrant/nginx.sh"`

## nodejs.sh
Install nodejs

`config.vm.provision "shell", path: "vagrant/nodejs.sh"`

## npm.sh
Install npm

> Needs: nodejs

`config.vm.provision "shell", path: "vagrant/npm.sh"`

## ohMyZ.sh
Install OhMyZsh

###Parameters
1. folder
2. user

> Needs: git
`config.vm.provision "shell", path: "vagrant/ohMyZ.sh", args: ["/home/vagrant", "vagrant"]`

## php-cli.sh
Install PHP Cli

`config.vm.provision "shell", path: "vagrant/php-cli.sh"`

## php-fpm.sh
Install PHP Fpm

`config.vm.provision "shell", path: "vagrant/php-fpm.sh"`

## phpmyadmin.sh
Install PhpMyAdmin

###Parameters:
1. root password

> Needs: nginx, php-fpm, mysql

`config.vm.provision "shell", path: "vagrant/phpmyadmin.sh", args: ["root"]`
