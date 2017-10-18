node default { }

user { 'puppetadmin':
  ensure     => present,
  shell      => '/bin/bash',
  home       => '/home/puppetadmin'
}
