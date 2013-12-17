# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "simulationcraft-berkshelf"

  config.omnibus.chef_version = :latest

  config.vm.box = "opscode_ubuntu-12.04_provisionerless"
  config.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box"

  config.vm.network :private_network, ip: "33.33.33.10"
  config.berkshelf.enabled = true

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end

  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
        "recipe[simulationcraft::default]"
    ]
  end
end
