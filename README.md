# 5-Node Local Vagrant test environment for Ansible

## Vagrant environment setup process:

1. Install Virtualbox
1. Install Vagrant
1. Clone this Github repo and change CWD to the downloaded repo directory
1. `vagrant up`
1. `vagrant ssh controller`
1. `cd /vagrant`
1. `./copy-keys.sh`

## Environment overview:
* **ip:** 10.10.10.10  **hostname:** controller **OS:** Ubuntu20.04 **Shared folder from host OS to this virtualbox VM:** `/vagrant` on controller virtualbox vm 
* **ip:** 10.10.10.11  **hostname:** node1 **OS:** Ubuntu20.04
* **ip:** 10.10.10.12  **hostname:** node2 **OS:** Ubuntu20.04
* **ip:** 10.10.10.13  **hostname:** node3 **OS:** Ubuntu20.04
* **ip:** 10.10.10.14  **hostname:** redhat-node **OS:** CentOS8

## Vagrant commands:

#### Starting a VM/Environment
- `vagrant up`   vagrant up -- starts vagrant environment (also provisions only on the FIRST vagrant up)
- `vagrant status` -- outputs status of the vagrant machine

#### Getting into a VM
- `vagrant ssh`  -- connects to machine via SSH
- `vagrant ssh <boxname>` -- If you give your box a name in your Vagrantfile, you can ssh into it with boxname. Works from any directory.

#### Stopping a VM
- `vagrant halt` -- stops the vagrant machine
- `vagrant suspend`  -- suspends a virtual machine (remembers state)

#### Saving Progress
- `vagrant snapshot save [options] [vm-name] <name>` -- vm-name is often default. Allows us to save so that we can rollback at a later time


#### [Vagrant Commands cheat-sheet](https://gist.github.com/wpscholar/a49594e2e2b918f4d0c4#file-vagrant-cheat-sheet-md)

