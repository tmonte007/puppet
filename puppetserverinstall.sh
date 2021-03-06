#!/bin/bash

# Ubuntu 16.04
# Puppet 5
# server install
# Puppet server requires at least 4GB of ram to run smoothly.
# Interesting note that Ansible requires very little ram to run smoothly.

sudo wget https://apt.puppetlabs.com/puppet5-release-xenial.deb
sudo dpkg -i puppet5-release-xenial.deb
sudo apt-get update
sudo apt-get -y install puppetserver
sudo cat <<EOT >> /etc/puppetlabs/puppet/puppet.conf
[main]
certname = puppetmaster.monte.network
server = puppetmaster.monte.network
environment = production
runinterval = 1h
strict_variables = true
EOT
sudo systemctl start puppetserver
sudo systemctl enable puppetserver

export PATH="$PATH:/opt/puppetlabs/bin"

# create cert
puppet agent --test
