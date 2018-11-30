#Installing Ansible
#!/bin/bash

set -e

#Add ansible repository to sources.list
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list

#Add ansible public gpg key to apt
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367

#Update apt
sudo apt-get update

#Install Ansible
sudo apt-get install ansible

#Install dependency library to work with aws
pip install boto 

#Export ANSIBLE-CONFIG , this allows ansible to use the ansible.cfg from a world writable directory
export ANSIBLE_CONFIG=~/iac-tutorial/ansible/ansible.cfg
