#!/bin/bash
sudo apt-get update
sudo apt-get install ansible -y
sudo apt install sshpass -y 

ssh-keygen -t rsa -b 2048  -f /home/vagrant/.ssh/id_rsa

echo " 

10.10.10.10 controller
10.10.10.11 node1
10.10.10.12 node2
10.10.10.13 node3
10.10.10.14 redhat-node
" >> /etc/hosts

ssh-keyscan node1 node2 node3 redhat-node >> /home/vagrant/.ssh/known_hosts

chown -R vagrant:vagrant /home/vagrant/.ssh