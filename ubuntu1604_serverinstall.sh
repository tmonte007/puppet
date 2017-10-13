#!/bin/bash

sudo wget https://apt.puppetlabs.com/puppet5-release-xenial.deb
sudo dpkg -i puppet5-release-xenial.deb
sudo apt-get update
sudo apt-get -y install puppetserver
sudo systemctl start puppetserver
sudo systemctl enable puppetserver
