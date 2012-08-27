class rpmbuilder::packages::essential {

  $builder_pkgs = [
    'autoconf',
    'automake',
    'createrepo',
    'fedora-packager',
    'gcc',
    'gnupg2',
    'make',
    'mock',
    'rpmdevtools',
    'rpm-libs',
    'rubygem-gem2rpm',
    'rubygem-rake',
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
    }
  }
}

