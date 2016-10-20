class rpmbuilder(
  $fedora_releases      = undef,
  $el_releases          = undef,
  $sles_releases        = undef,
  $vendor               = undef,
  $mock_root            = undef,
  $proxy                = undef,
  $pe                   = false,
  $pe_vers              = undef,
  $add_epel             = true,
  $add_pl_repos         = true,
  $use_extra_packages   = false,
  $use_tmpfs            = false,
  $tmpfs_req_ram        = '4096',
  $tmpfs_max_size       = '2048m',
  $cleanup_on_failure   = true,
  $cleanup_on_success   = true,
  $add_build_tools_repo = false,
  $mock_version         = installed,
  $mirror_url           = undef,
) {

  Class['Rpmbuilder::Packages::Essential']->Class['Rpmbuilder::Mock::Puppetlabs_mocks']

  if $add_pl_repos {
    include puppetlabs_yum
  }

  if $add_epel {
    include epel
  }

  class { "rpmbuilder::packages::essential":
    epel         => $add_epel,
    mock_version => $mock_version,
  }

  if ($use_extra_packages) {
    include rpmbuilder::packages::extra
  }

  class { rpmbuilder::mock::puppetlabs_mocks:
    fedora_releases   => $fedora_releases,
    el_releases       => $el_releases,
    vendor            => $vendor,
    proxy             => $proxy,
    mock_root         => $mock_root,
    require           => Package['mock'],
    mirror_url        => $mirror_url,
  }

  if $pe {
    class { rpmbuilder::mock::pe_mocks:
      pe_vers   => $pe_vers,
      mock_root => $mock_root,
      require   => Package['mock'],
    }
    include rpmbuilder::mock::pe_mockdefaults
  }

  if $use_tmpfs {
    include rpmbuilder::mock::tmpfs_plugin
  }

  class { rpmbuilder::mock::cleanup:
    on_success => $cleanup_on_success,
    on_failure => $cleanup_on_failure,
  }
}
