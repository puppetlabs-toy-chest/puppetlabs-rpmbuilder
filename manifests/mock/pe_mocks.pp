class rpmbuilder::mock::pe_mocks(
  $pe_vers = ["3.0","3.1","3.2","3.3","3.7","4.0"],
  $mock_root = '/etc/mock'
) {
  rpmbuilder::mock::pe_mockset { $pe_vers:
    mock_root   => $mock_root,
  }
}
