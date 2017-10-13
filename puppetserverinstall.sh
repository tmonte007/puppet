#!/bin/bash

# Ubuntu 16.04
# Puppet 5
# server install

sudo wget https://apt.puppetlabs.com/puppet5-release-xenial.deb
sudo dpkg -i puppet5-release-xenial.deb
sudo apt-get update
sudo apt-get -y install puppetserver
sudo systemctl start puppetserver
sudo systemctl enable puppetserver

export PATH="$PATH:/opt/puppetlabs/bin"
