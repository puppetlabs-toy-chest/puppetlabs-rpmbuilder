define rpmbuilder::mock::pl_mocks (
  $dist       = undef,
  $vendor     = "Puppet User",
  $proxy      = undef,
  $mock_root  = undef,
) {

  # This is absolutely a bandaid; it's just here to stub
  # out support for EL7, using the beta release. When EL7
  # is a fully baked thing then this will reverted/updated
  # to be 87% less hacky. For now we're also only using
  # x86_64 as an arch, because EL7 beta is only x64_64.
  if ($name == '7') and ($dist == 'el') {
    file { 'pl-el-7-x86_64':
      path    => "/etc/mock/pl-el-7-x86_64.cfg",
      owner   => "root",
      group   => "mock",
      ensure  => present,
      content => template("rpmbuilder/el7-bandaid.erb"),
      mode    => "0644",
    }

  } else {
    rpmbuilder::mock::create_mock { "pl-${dist}-${name}-i386":
      dist      => $dist,
      release   => $name,
      proxy     => $proxy,
      vendor    => $vendor,
      arch      => "i386",
      mock_root => $mock_root,
    }

    rpmbuilder::mock::create_mock { "pl-${dist}-${name}-x86_64":
      dist      => $dist,
      release   => $name,
      proxy     => $proxy,
      vendor    => $vendor,
      arch      => "x86_64",
      mock_root => $mock_root,
    }
  }
}
