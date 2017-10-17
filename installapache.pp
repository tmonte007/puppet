package { 'apache2':
  require => Exec['apt-update'],
  ensure => installed,
}

# ensure apache2 service is running
service { 'apache2':
  ensure => running,
}
