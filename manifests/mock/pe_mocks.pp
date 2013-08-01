class rpmbuilder::mock::pe_mocks(
  $pe_vers = ["1.2","2.0","2.5","2.6","2.7","2.8","3.0","3.1"],
  $mock_root = '/etc/mock'
) {
  # Default PE mocks for PE 1.2 through 3.0
  rpmbuilder::mock::pe_mockset { $pe_vers:
    mock_root   => $mock_root,
  }

  rpmbuilder::mock::pe_legacy_mockset { $pe_vers:
    mock_root   => $mock_root,
  }

  rpmbuilder::mock::pe_mock { 'pupent-extras-el5-i386':
    pe_ver      => "2.5",
    release     => "5",
    arch        => "i386",
    mock_root   => $mock_root,
  }

  rpmbuilder::mock::pe_mock { 'pupent-extras-el5-x86_64':
    pe_ver      => "2.5",
    release     => "5",
    arch        => "x86_64",
    mock_root   => $mock_root,
  }

  rpmbuilder::mock::pe_mock { 'pupent-extras-el6-i386':
    pe_ver      => "2.5",
    release     => "6",
    arch        => "i386",
    mock_root   => $mock_root,
  }

  rpmbuilder::mock::pe_mock { 'pupent-extras-el6-x86_64':
    pe_ver      => "2.5",
    release     => "6",
    arch        => "x86_64",
    mock_root   => $mock_root,
  }
}
