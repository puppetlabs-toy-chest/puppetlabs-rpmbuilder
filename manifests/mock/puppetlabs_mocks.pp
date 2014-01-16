class rpmbuilder::mock::puppetlabs_mocks (
  $fedora_releases  = ["14","15","16","17","18","19","20"],
  $el_releases      = ["5","6","7"],
  $vendor           = undef,
  $proxy            = undef,
  $mock_root        = undef,
) {

  rpmbuilder::mock::pl_mocks { $fedora_releases:
    dist      => "fedora",
    vendor    => $vendor,
    proxy     => $proxy,
    mock_root => $mock_root,
  }

  rpmbuilder::mock::pl_mocks { $el_releases:
    dist      => "el",
    vendor    => $vendor,
    proxy     => $proxy,
    mock_root => $mock_root,
  }
}
