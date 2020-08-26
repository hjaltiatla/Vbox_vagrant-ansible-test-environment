# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
	config.vm.define "redhat-node" do |redhat|
		redhat.vm.box = "generic/centos8"
		redhat.vm.hostname = "redhat-node"
		redhat.vm.network :private_network, ip: "10.10.10.14"
		redhat.vm.provider "virtualbox" do |vb|
			vb.memory = "1024"
		config.vm.synced_folder "./", "/vagrant",
			mount_options: ["dmode=775,fmode=777"]
		end
		config.ssh.insert_key = false
		config.vm.provision "shell", inline: <<-SHELL
     sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config    
     systemctl restart sshd.service
  SHELL
	end
	
	(1..3).each do |i|
	   config.vm.define "node#{i}" do |node|
		   node.vm.box = "bento/ubuntu-20.04"
		   node.vm.hostname = "node#{i}"
		   node.vm.network :private_network, ip: "10.10.10.1#{i}"
		   node.vm.provider "virtualbox" do |vb|
				vb.memory = "1024"
		config.vm.synced_folder "./", "/vagrant",
			mount_options: ["dmode=775,fmode=777"]
		   end
		   
	   end
	end
	

	config.vm.define "controller" do |controller|
		controller.vm.box = "bento/ubuntu-20.04"
		controller.vm.hostname = "controller"
		controller.vm.network :private_network, ip: "10.10.10.10"
		controller.vm.provider "virtualbox" do |vb|
			vb.memory = "1024"
	config.vm.synced_folder "./", "/vagrant",
		mount_options: ["dmode=775,fmode=777"]
		end
		controller.vm.provision :shell, path: 'ubuntu-setup.sh'
	end



	end
	

