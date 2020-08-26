# 5-Node Local Vagrant test environment for Ansible

## Vagrant environment setup process:

1. Install Virtualbox
1. Install Vagrant
1. Clone this Github repo and change CWD to the downloaded repo directory
1. vagrant up
1. vagrant ssh controller
1. cd /vagrant
1. ./copy-keys.sh

## Environment overview:
* **ip:** 10.10.10.10  **hostname:** controller **OS:** Ubuntu20.04
* **ip:** 10.10.10.11  **hostname:** node1 **OS:** Ubuntu20.04
* **ip:** 10.10.10.12  **hostname:** node2 **OS:** Ubuntu20.04
* **ip:** 10.10.10.13  **hostname:** node3 **OS:** Ubuntu20.04
* **ip:** 10.10.10.14  **hostname:** redhat-node **OS:** CentOS8
