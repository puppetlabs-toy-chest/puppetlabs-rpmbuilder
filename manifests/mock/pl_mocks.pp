define rpmbuilder::mock::pl_mocks (
  $dist       = undef,
  $vendor     = "Puppet User",
  $proxy      = undef,
  $mock_root  = undef,
) {

  rpmbuilder::mock::create_mock { "pl-${dist}-${name}-i386":
    dist      => $dist,
    release   => $name,
    proxy     => $proxy,
    vendor    => $vendor,
    arch      => "i386",
    dev       => false,
    mock_root => $mock_root,
  }

  rpmbuilder::mock::create_mock { "pl-${dist}-${name}-x86_64":
    dist      => $dist,
    release   => $name,
    proxy     => $proxy,
    vendor    => $vendor,
    arch      => "x86_64",
    dev       => false,
    mock_root => $mock_root,
  }

  rpmbuilder::mock::create_mock { "pl-${dist}-${name}-i386-dev":
    dist      => $dist,
    release   => $name,
    proxy     => $proxy,
    vendor    => $vendor,
    arch      => "i386",
    dev       => true,
    mock_root => $mock_root,
  }

  rpmbuilder::mock::create_mock { "pl-${dist}-${name}-x86_64-dev":
    dist      => $dist,
    release   => $name,
    proxy     => $proxy,
    vendor    => $vendor,
    arch      => "x86_64",
    dev       => true,
    mock_root => $mock_root,
  }

}
