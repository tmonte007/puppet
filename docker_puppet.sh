#!/bin/bash

# https://puppet.com/blog/running-puppet-software-docker-containers

sudo docker network create puppet
sudo docker run --net puppet --name puppetmaster --hostname puppet puppet/puppetserver
