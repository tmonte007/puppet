node default { }

user { 'puppetadmin':
  ensure     => present,
  uid        => '1000',
  gid        => '1000',
  shell      => '/bin/bash',
  home       => '/home/puppetadmin'
}
