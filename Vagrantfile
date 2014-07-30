VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "private_network", ip: "192.168.2.100"
  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.synced_folder "./", "/var/www", :type => "nfs"

  config.vm.provision "shell", path: "vagrant/init.sh"
  config.vm.provision "shell", path: "vagrant/git.sh"
  config.vm.provision "shell", path: "vagrant/ohMyZ.sh", args: ["/home/vagrant", "vagrant"]
  config.vm.provision "shell", path: "vagrant/ohMyZ.sh", args: ["/root", "root"]
  config.vm.provision "shell", path: "vagrant/nginx.sh"
  config.vm.provision "shell", path: "vagrant/mysql.sh", args: ["root"]
  config.vm.provision "shell", path: "vagrant/php-fpm.sh"
  config.vm.provision "shell", path: "vagrant/php-cli.sh"
  config.vm.provision "shell", path: "vagrant/nodejs.sh"
  config.vm.provision "shell", path: "vagrant/npm.sh"
  config.vm.provision "shell", path: "vagrant/bower.sh"
  config.vm.provision "shell", path: "vagrant/grunt.sh"
  config.vm.provision "shell", path: "vagrant/composer.sh"
  config.vm.provision "shell", path: "vagrant/phpmyadmin.sh", args: ["root"]
  config.vm.provision "shell", path: "vagrant/elasticsearch.sh", args: ["1.3.1"]

  config.vm.provision "file", source: "vagrant_custom/vhost", destination: "/tmp/etc/nginx/sites-available/default", run: "always"
  config.vm.provision "shell", path: "vagrant_custom/custom.sh", run: "always"  
  
  # You can add more custom provision script here

  config.vm.hostname = 'my-host.dev'
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
  end
end
