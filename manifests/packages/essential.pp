class rpmbuilder::packages::essential (
  $epel = true,
  $mock_version = installed,
) {
  if $epel {
    Package {
      require  => Class['epel']
    }
  }

  $common_builder_pkgs = [
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
  ]

  # this package is only present in "rpm" package before el7
  if versioncmp($::operatingsystemrelease, '7') >= 0 {
    $builder_pkgs = concat($common_builder_pkgs, 'rpm-sign')
  } else {
    $builder_pkgs = $common_builder_pkgs
  }

  ensure_packages($builder_pkgs)

  package { 'mock':
    ensure => $mock_version,
  }
}
