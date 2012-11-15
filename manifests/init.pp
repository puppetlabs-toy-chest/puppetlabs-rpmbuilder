class rpmbuilder(
  $fedora_releases  = undef,
  $el_releases      = undef,
  $vendor           = undef,
  $mock_root        = undef,
  $proxy            = undef,
  $pe               = false,
  $pe_vers          = undef,
  $add_pl_repos     = true,
) {
  if $add_pl_repos {
    include puppetlabs_yum
  }
  include epel
  include rpmbuilder::packages::essential

  class { rpmbuilder::mock::puppetlabs_mocks:
    fedora_releases   => $fedora_releases,
    el_releases       => $el_releases,
    vendor            => $vendor,
    proxy             => $proxy,
    mock_root         => $mock_root,
  }

  if $pe {
    include rpmbuilder::packages::extra
    class { rpmbuilder::mock::pe_mocks:
      pe_vers   => $pe_vers,
      mock_root => $mock_root,
    }
  }
}
