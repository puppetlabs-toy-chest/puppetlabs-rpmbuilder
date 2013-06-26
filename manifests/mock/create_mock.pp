define rpmbuilder::mock::create_mock (
  $dist       = undef,
  $release    = undef,
  $proxy      = false,
  $vendor     = "Puppet User",
  $arch       = undef,
  $dev        = false,
  $mock_root  = "/etc/mock",
) {

  file { $name:
    path      => "${mock_root}/${name}.cfg",
    owner     => "root",
    group     => "mock",
    ensure    => present,
    content   => template("rpmbuilder/mock-config.erb"),
    mode      => "0644",
  }
}
