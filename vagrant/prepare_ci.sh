#!/bin/bash
#
# Provision manually from within the started VM

wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
apt-get update

ANSIBLE_PLAYBOOK=/ansible/provision_ci.yml
ANSIBLE_HOSTS=/ansible/hosts/vagrant-local

# Install Ansible and its dependencies if it's not installed already.
if [ ! -f /usr/bin/ansible ]; then
	apt-get -y install curl ansible
fi

echo "Starting local provisioning"
ansible-playbook ${ANSIBLE_PLAYBOOK} -i ${ANSIBLE_HOSTS} --connection=local --verbose