class rpmbuilder::packages::extra {

  $builder_pkgs = [
    'mlocate',
    'nfs-utils',
    's3cmd',
    'rubygem-pg'
  ]

  package { $builder_pkgs:
    ensure => installed,
    require => Class['epel'],
  }
}
