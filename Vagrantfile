# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	config.vm.define "controller" do |controller|
		controller.vm.box = "bento/ubuntu-18.04"
		controller.vm.hostname = "controller"
		controller.vm.network :private_network, ip: "10.10.10.10"
		controller.vm.provider "virtualbox" do |vb|
			vb.memory = "512"
		end
		controller.vm.provision :shell, path: 'ubuntu-setup.sh'
	end

	(1..3).each do |i|
	   config.vm.define "node#{i}" do |node|
		   node.vm.box = "bento/ubuntu-18.04"
		   node.vm.hostname = "node#{i}"
		   node.vm.network :private_network, ip: "10.10.10.1#{i}"
		   node.vm.provider "virtualbox" do |vb|
				vb.memory = "512"
		   end
		   
	   end

	end
	
end
