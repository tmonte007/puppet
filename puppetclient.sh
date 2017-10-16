#!/bin/bash

sudo apt -y install ruby
sudo gem install puppet
touch hello.pp
chmod +x hello.pp
# ' require '\'' to escape them
echo -e 'notify { '\''Hello world\!'\'':' >> hello.pp
echo -e '}' >> hello.pp
puppet apply hello.pp
