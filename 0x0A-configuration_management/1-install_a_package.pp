package { 'python3-pip':
  ensure => installed,
}

exec { 'install-flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => ['/usr/bin', '/usr/local/bin'],
  creates => '/usr/local/lib/python3.8/dist-packages/flask',
}

file { '/usr/bin/flask':
  ensure => link,
  target => '/usr/local/bin/flask',
}
