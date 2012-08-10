class rpmbuilder::packages::essential {

  $builder_pkgs = [
    'createrepo',
    'fedora-packager',
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
     ensure  => latest,
     require => Class['rpmbuilder::repos'],
  }
  case $operatingsystem {
    /(CentOS|RedHat)/: { }
    'Fedora': {
        package { 'rpm-sign': ensure => latest }
    }
  }
}

