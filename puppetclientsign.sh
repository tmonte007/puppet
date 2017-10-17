#!/bin/bash

# usage: ./puppetclientsign.sh CLIENT
sudo /opt/puppetlabs/bin/puppet cert sign $1
