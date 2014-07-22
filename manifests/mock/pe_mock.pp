define rpmbuilder::mock::pe_mock(
  $pe_ver,
  $dist = "el",
  $release,
  $sp = "sp1",
  $arch,
  $mock_root = "/etc/mock"
) {
  file { $name:
    path    => "${mock_root}/${name}.cfg",
    owner   => "root",
    group   => "mock",
    ensure  => present,
    content => template("rpmbuilder/pe-${dist}-mock-config.erb"),
    mode    => "0644",
  }
}
