class rpmbuilder::packages::essential {

  $builder_pkgs = [
    'autoconf',
    'automake',
    'createrepo',
    'fedora-packager',
    'gcc',
    'gnupg',
    'make',
    'mock',
    'rpmdevtools',
    'rpm-libs',
    'rubygem-gem2rpm',
    'rubygem-rake',
    'rubygem-rspec',
    'yum',
    'yum-utils',
  ]

  package { $builder_pkgs:
     ensure  => installed,
     require => Class['rpmbuilder::repos'],
  }
  case $operatingsystem {
    /(CentOS|RedHat)/: { }
    'Fedora': {
        package { 'rpm-sign': ensure => installed }
        package { 'keychain': ensure  => installed }
    }
  }
}

