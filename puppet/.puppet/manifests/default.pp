package { [
    'puppet',
    'git',
    'vim',
    'tree',
    'cmake',
    'scons',
    'clang',
    'build-essential',
  ]:
  ensure => latest,
}

package { 'puppet-lint':
  ensure   => latest,
  provider => gem,
}
