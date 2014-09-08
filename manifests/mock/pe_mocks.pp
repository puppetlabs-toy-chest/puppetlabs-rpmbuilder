class rpmbuilder::mock::pe_mocks(
  $pe_vers = ["1.2","2.0","2.5","2.6","2.7","2.8","3.0","3.1","3.2","3.3","3.4","4.0"],
  $mock_root = '/etc/mock'
) {
  rpmbuilder::mock::pe_mockset { $pe_vers:
    mock_root   => $mock_root,
  }
}
