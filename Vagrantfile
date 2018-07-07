# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "master" do |master|
    master.vm.box = "centos/7"
    master.vm.hostname = 'centos7'
    master.ssh.insert_key = false
    
    master.vm.network "private_network", ip: "192.168.56.101"

    master.vm.provider "virtualbox" do |v|
      v.name = "ansiblemaster"
      v.memory = 512
      v.cpus = 1
    end
  end
 
  config.vm.define "node1" do |node1|
    node1.vm.box = "mwrock/Windows2012R2"
    node1.vm.hostname = 'windows2012'
    node1.vm.guest = :windows
    node1.vm.boot_timeout = 900
    node1.vm.provision "shell", path: "vagrant_win_prepare.ps1"

    node1.vm.network "private_network", ip: "192.168.56.102"

    node1.vm.provider "virtualbox" do |v|
      v.gui = true
      v.name = "win2012"
      v.memory = 4096
      v.cpus = 2
    end
  end
end
