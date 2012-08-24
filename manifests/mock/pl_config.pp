define rpmbuilder::mock::pl_config (
  $config,
  $build_root,
  $target_arch,
  $legal_host_arches          = "'i386','i586','i686','x86_64'",
  $chroot_setup_cmd           = "groupinstall buildsys-build",
  $dist,
  $dist_macro                 = undef,
  $base_repo_baseurl          = undef,
  $base_mirrorlist            = undef,
  $base_debug_mirrorlist      = undef,
  $updates_repo_baseurl       = undef,
  $updates_mirrorlist         = undef,
  $updates_debug_mirrorlist   = undef,
  $updates_repo_enabled       = '1',
  $debug_mirrorlist           = undef,
  $puppet_prod_baseurl        = undef,
  $puppet_deps_baseurl        = undef,
  $puppet_dev_baseurl         = undef,
  $epel_repo_mirrorlist       = undef,
  $failover_priority          = undef,
  $is_vendor_puppetlabs       = undef,
) {

  file { "${config}":
    ensure  => present,
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    content => template("rpmbuilder/pl-mock-config.erb"),
    require => Package['mock'],
  }
}
