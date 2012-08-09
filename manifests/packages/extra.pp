class rpmbuilder::packages::extra {

  $builder_pkgs = [
    'git',
    'mlocate',
    'nfs-utils',
    's3cmd',
  ]
  package { $builder_pkgs:
    ensure => latest,
    require => Class['rpmbuilder::repos'],
   }
}
