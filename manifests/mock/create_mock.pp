define rpmbuilder::mock::create_mock (
  $dist         = undef,
  $release      = undef,
  $proxy        = false,
  $vendor       = "Puppet User",
  $arch         = undef,
  $mock_root    = "/etc/mock",
  $mirror_url   = undef,
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
