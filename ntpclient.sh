#!/bin/bash

# ntp sync is required for puppet
# This is for Ubuntu 16.04.
# Other versions and operating systems may require modification.

sudo timedatectl set-timezone America/New_York
sudo apt-get -y install ntp

# Verify time is syncing properly
sudo ntpq -p
