#!/bin/bash

# Ubuntu 16.04
# client

sudo wget https://apt.puppetlabs.com/puppet5-release-xenial.deb
sudo dpkg -i puppet5-release-xenial.deb
sudo apt-get update
sudo apt-get puppet-agent
sudo systemctl start puppet-agent
sudo systemctl enable puppet-agent
