define rpmbuilder::mock::pe_config (
  $config,
  $build_root,
  $target_arch,
  $legal_host_arches = "'i386','i586','i686','x86_64'",
  $chroot_setup_cmd  = "install bash bzip2 coreutils cpio curl cvs diffutils\
 fedpkg findutils gawk gcc gcc-c++ gnupg grep gzip info make patch redhat-release\
 redhat-release-server redhat-rpm-config rpm-build sed shadow-utils tar unzip\
 util-linux-ng which xz buildsys-macros",
  $dist,
  $ccache_enable        = 'False',
  $dist_macro           = undef,
  $base_repo_baseurl    = undef,
  $base_mirrorlist      = undef,
  $updates_repo_baseurl = undef,
  $updates_repo_enabled = '1',
  $updates_mirrorlist   = undef,
  $pe_repo_baseurl,
  $extras_repo_baseurl  = undef,
  $failover_priority    = undef,
) {

    file { "${config}":
      ensure  => present,
      mode    => '0644',
      owner   => 'root',
      group   => 'root',
      content => template("rpmbuilder/pupent-mock-config.erb"),
      require => Package['mock'],
    }
}
