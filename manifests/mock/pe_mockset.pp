define rpmbuilder::mock::pe_mockset (
  $mock_root = "/etc/mock",
) {
  rpmbuilder::mock::pe_mock { "pupent-${name}-el5-i386":   pe_ver  => $name, release => '5', arch => 'i386', mock_root => $mock_root, }
  rpmbuilder::mock::pe_mock { "pupent-${name}-el5-x86_64": pe_ver  => $name, release => '5', arch => 'x86_64', mock_root => $mock_root, }
  rpmbuilder::mock::pe_mock { "pupent-${name}-el6-i386":   pe_ver  => $name, release => '6', arch => 'i386', mock_root => $mock_root, }
  rpmbuilder::mock::pe_mock { "pupent-${name}-el6-x86_64": pe_ver  => $name, release => '6', arch => 'x86_64', mock_root => $mock_root, }
}
