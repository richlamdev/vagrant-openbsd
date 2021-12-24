# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |openbsdconfig|
  # General Vagrant VM configuration.
  openbsdconfig.ssh.insert_key = false
  openbsdconfig.vm.synced_folder ".", "/vagrant", disabled: true
  openbsdconfig.vm.provider :virtualbox do |v|
    v.memory = 512
    v.linked_clone = true
  end

  openbsdconfig.vm.define "japan" do |japan|
    japan.vm.box = "generic/openbsd7"
    japan.vm.hostname = "japan.test"
    japan.vm.network :private_network, ip: "10.0.0.3"
  end

  openbsdconfig.vm.define "india" do |india|
    india.vm.box = "generic/openbsd7"
    india.vm.hostname = "india.test"
    india.vm.network :private_network, ip: "10.0.0.2"
  end

end
