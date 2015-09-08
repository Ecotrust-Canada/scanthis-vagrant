# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  
  # setup ubuntu
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_url = [File.dirname( __FILE__ ) + "trusty-server-cloudimg-amd64-vagrant-disk1.box", 'https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box']
  
  # setup vm network
  config.vm.network "private_network", type: 'dhcp'
  config.vm.network :forwarded_port, guest: 8000, host: 8000
  config.vm.network :forwarded_port, guest: 3000, host: 3000

  # setup virtualbox specific options
  config.vm.provider "virtualbox" do |v|
    v.name = "ScanThis Vagrant"
    v.customize ["modifyvm", :id, "--memory", "1024"]
  end

  # setup synced folders
  config.vm.synced_folder "../scanthis", "/opt/scanthis", type: 'nfs'

  # run setup scripts
  config.vm.provision :shell, path: "setup/os.sh"
  config.vm.provision :shell, path: "setup/dep.sh"
  config.vm.provision :shell, path: "setup/postgres.sh"
  config.vm.provision :shell, path: "setup/node.sh", privileged: false
end
