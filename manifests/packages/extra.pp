class rpmbuilder::packages::extra {

  $builder_pkgs = [
    'mlocate',
    'nfs-utils',
    's3cmd',
  ]
  package { $builder_pkgs:
    ensure => installed,
    require => Class['rpmbuilder::repos'],
   }
}
