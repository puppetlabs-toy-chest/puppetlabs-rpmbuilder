class rpmbuilder::packages::essential {
  Package {
    require  => Class['epel']
  }

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
  }

  case $operatingsystem {
    'Fedora': {
      package { 'rpm-sign': ensure => installed }
    }
  }
}
