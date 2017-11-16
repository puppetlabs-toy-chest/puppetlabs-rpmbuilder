class rpmbuilder::mock::puppetlabs_mocks (
  $fedora_releases  = ["14"],
  $el_releases      = ["5","6","7"],
  $sles_releases    = ["11","12"],
  $vendor           = undef,
  $proxy            = undef,
  $mock_root        = undef,
  $mirror_url       = false,
) {

  rpmbuilder::mock::pl_mocks { $fedora_releases:
    dist        => "fedora",
    vendor      => $vendor,
    proxy       => $proxy,
    mock_root   => $mock_root,
    mirror_url  => $mirror_url,
  }

  rpmbuilder::mock::pl_mocks { $el_releases:
    dist        => "el",
    vendor      => $vendor,
    proxy       => $proxy,
    mock_root   => $mock_root,
    mirror_url  => $mirror_url,
  }

  rpmbuilder::mock::pl_mocks { $sles_releases:
    dist        => "sles",
    vendor      => $vendor,
    proxy       => $proxy,
    mock_root   => $mock_root,
    mirror_url  => $mirror_url,
  }
}
