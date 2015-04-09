class rpmbuilder::packages::essential (
  $epel = true,
  $mock_version = installed,
) {
  if $epel {
    Package {
      require  => Class['epel']
    }
  }

  $builder_pkgs = [
    'autoconf',
    'automake',
    'createrepo',
    'fedora-packager',
    'gcc',
    'gnupg2',
    'make',
    'rpmdevtools',
    'rpm-libs',
    'rubygem-gem2rpm',
    'rubygem-rake',
    'yum',
    'yum-utils',
    'rpm-sign',
  ]

  package { $builder_pkgs:
    ensure  => installed,
  }

  package { 'mock':
    ensure => $mock_version,
  }
}
