#!/bin/bash

# install puppet
sudo apt -y install ruby
sudo gem install puppet

# test puppet
touch hello.pp
chmod +x hello.pp
# ' require '\'' to escape them
echo -e 'notify { '\''Hello world\!'\'':' >> hello.pp
echo -e '}' >> hello.pp
puppet apply hello.pp

# Connect to the server
puppet config set --section agent server puppetmaster.monte.network
puppet agent --test
