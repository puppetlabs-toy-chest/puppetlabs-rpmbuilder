class rpmbuilder(
  $fedora_releases    = undef,
  $el_releases        = undef,
  $vendor             = undef,
  $mock_root          = undef,
  $proxy              = undef,
  $pe                 = false,
  $pe_vers            = undef,
  $add_pl_repos       = true,
  $use_extra_packages = false,
  $use_tmpfs          = false,
  $tmpfs_req_ram      = '4096',
  $tmpfs_max_size     = '2048m',
  $cleanup_on_failure = true,
  $cleanup_on_success = true,
) {

  Class['Rpmbuilder::Packages::Essential']->Class['Rpmbuilder::Mock::Puppetlabs_mocks']

  if $add_pl_repos {
    include puppetlabs_yum
  }
  include epel
  include rpmbuilder::packages::essential

  if ($use_extra_packages) {
    include rpmbuilder::packages::extra
  }

  class { rpmbuilder::mock::puppetlabs_mocks:
    fedora_releases   => $fedora_releases,
    el_releases       => $el_releases,
    vendor            => $vendor,
    proxy             => $proxy,
    mock_root         => $mock_root,
  }

  if $pe {
    class { rpmbuilder::mock::pe_mocks:
      pe_vers   => $pe_vers,
      mock_root => $mock_root,
    }
  }

  if $use_tmpfs {
    include rpmbuilder::mock::tmpfs_plugin
  }

  class { rpmbuilder::mock::cleanup:
    on_success => $cleanup_on_success,
    on_failure => $cleanup_on_failure,
  }
}
