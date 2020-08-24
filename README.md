## 4-Node Local Vagrant test environment for Ansible using Virtualbox

*If using Windows 10 and want to use WSL i reccomend using WSL version 1 because having Hyper-v enabled causes issues alongside Virtualbox.*

**Vagrant environment setup process:**

1. Install Virtualbox
1. Install Vagrant
1. Clone this Github repo and change CWD to the downloaded repo directory
1. vagrant up
1. vagrant ssh controller
1. ssh-keygen -t rsa -b 2048
1. ssh-copy-id node1   *(repeat for node2 and node3)*


