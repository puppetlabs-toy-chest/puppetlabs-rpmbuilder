define rpmbuilder::mock::pe_mock(
  $pe_ver,
  $dist = "el",
  $release,
  $arch,
  $mock_root = "/etc/mock"
) {

  if ($release == '7') and ($dist == 'el') {
    file { $name:
      path    => "${mock_root}/${name}.cfg",
      owner   => "root",
      group   => "mock",
      ensure  => present,
      content => template("rpmbuilder/pe-el7-bandaid.erb"),
      mode    => "0644",
    }
  } else {
    file { $name:
      path    => "${mock_root}/${name}.cfg",
      owner   => "root",
      group   => "mock",
      ensure  => present,
      content => template("rpmbuilder/pe-${dist}-mock-config.erb"),
      mode    => "0644",
    }
  }
}
