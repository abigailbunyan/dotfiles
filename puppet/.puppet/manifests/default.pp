include stdlib
include apt
include docker

apt::ppa { 'ppa:openjdk-r/ppa': }

apt::source { 'puppetlabs':
  location => 'http://apt.puppetlabs.com',
  repos    => 'main',
  key      => {
    'id'     => '47B320EB4C7C375AA9DAE1A01054B7A24BD6EC30',
    'server' => 'pgp.mit.edu',
  },
}

package { [
    'puppet',
    'git',
    'vim',
    'tree',
    'cmake',
    'scons',
    'clang',
    'build-essential',
    'sudo',
  ]:
  ensure => latest,
}

package { 'puppet-lint':
  ensure   => latest,
  provider => gem,
}

user { 'abigail':
  groups => [
    'docker',
    'sudo',
  ],
}

file_line { 'sudo_rule':
  path => '/etc/sudoers',
  line => '%sudo ALL=(ALL:ALL) ALL',
  match => '%sudo',
}
