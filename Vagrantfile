# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.box = "debian/bookworm64"

  config.vm.network "private_network", ip: "192.168.56.22"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "local.yml"
    ansible.inventory_path = "hosts"
    ansible.limit = "all"
    ansible.extra_vars = { user: "vagrant" }
    ansible.compatibility_mode = "2.0"
  end

end
