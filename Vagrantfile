# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "forwarded_port", guest: 80, host: 10080
  config.disksize.size = "900GB"
  config.vm.provider "virtualbox" do |vb|
    vb.cpus = "8" 
  end 
 
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt update
    sudo apt install -y python
    sudo snap install nextcloud
  SHELL
end

