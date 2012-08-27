class rpmbuilder::mock::pe_mocks {

  $mock_path = '/etc/mock'
  Package['mock'] -> Rpmbuilder::Mock::Pe_config<| |>

  rpmbuilder::mock::pe_config { 'pupent-1.1-el4-i386-cve.cfg':
    config             => "${mock_path}/pupent-1.1-el4-i386-cve.cfg",
    build_root         => 'pupent-1.1-el4-i386-cve',
    target_arch        => 'i386',
    dist               => 'el4',
    dist_macro         => '.el4',
    base_repo_baseurl  => 'http://vault.centos.org/4.9/os/i386',
    pe_repo_baseurl    => 'http://neptune.puppetlabs.lan/1.1/repos/el-4-i386',
  }

  rpmbuilder::mock::pe_config { 'pupent-1.1-el4-x86_64-cve.cfg':
    config             => "${mock_path}/pupent-1.1-el4-x86_64-cve.cfg",
    build_root         => 'pupent-1.1-el4-x86_64-cve',
    target_arch        => 'x86_64',
    dist               => 'el4',
    dist_macro         => '.el4',
    base_repo_baseurl  => 'http://vault.centos.org/4.9/os/x86_64/',
    pe_repo_baseurl    => 'http://neptune.puppetlabs.lan/1.1/repos/el-4-x86_64',
  }

  rpmbuilder::mock::pe_config { 'pupent-1.1-el5-i386-cve.cfg':
    config               => "${mock_path}/pupent-1.1-el5-i386-cve.cfg",
    build_root           => 'pupent-1.1-el5-i386-cve',
    target_arch          => 'i386',
    dist                 => 'el5',
    dist_macro           => '.el5',
    base_repo_baseurl    => 'http://yo.puppetlabs.lan/cent5latestserver-i386/RPMS.os',
    pe_repo_baseurl      => 'http://neptune.puppetlabs.lan/1.1/repos/el-5-i386/',
  }

  rpmbuilder::mock::pe_config { 'pupent-1.1-el5-x86_64-cve.cfg':
    config               => "${mock_path}/pupent-1.1-el5-x86_64-cve.cfg",
    build_root           => 'pupent-1.1-el5-x86_64-cve',
    target_arch          => 'x86_64',
    dist                 => 'el5',
    dist_macro           => '.el5',
    base_repo_baseurl    => 'http://yo.puppetlabs.lan/cent5latestserver-x86_64/RPMS.os',
    pe_repo_baseurl      => 'http://neptune.puppetlabs.lan/1.1/repos/el-5-x86_64',
  }

  rpmbuilder::mock::pe_config { 'pupent-1.1-el6-i386-cve.cfg':
    config             => "${mock_path}/pupent-1.1-el6-i386-cve.cfg",
    build_root         => 'pupent-1.1-el6-i386-cve',
    target_arch        => 'i386',
    dist               => 'el6',
    base_repo_baseurl  => 'http://yo.puppetlabs.lan/cent6latestserver-i386/RPMS.os',
    pe_repo_baseurl    => 'http://neptune.puppetlabs.lan/1.1/repos/el-6-i386',
    failover_priority  => 'base',
  }
  rpmbuilder::mock::pe_config { 'pupent-1.1-el6-x86_64-cve.cfg':
    config             => "${mock_path}/pupent-1.1-el6-x86_64-cve.cfg",
    build_root         => 'pupent-1.1-el6-x86_64-cve',
    target_arch        => 'x86_64',
    dist               => 'el6',
    base_repo_baseurl  => 'http://yo.puppetlabs.lan/cent6latestserver-x86_64/RPMS.os',
    pe_repo_baseurl    => 'http://neptune.puppetlabs.lan/1.1/repos/el-6-x86_64',
  }

  rpmbuilder::mock::pe_config { 'pupent-1.2-el4-i386-cve.cfg':
    config             => "${mock_path}/pupent-1.2-el4-i386-cve.cfg",
    build_root         => 'pupent-1.2-el4-i386-cve',
    target_arch        => 'i386',
    dist               => 'el4',
    dist_macro         => '.el4',
    base_repo_baseurl  => 'http://vault.centos.org/4.9/os/i386',
    pe_repo_baseurl    => 'http://neptune.puppetlabs.lan/1.2/repos/el-4-i386',
  }

  rpmbuilder::mock::pe_config { 'pupent-1.2-el4-x86_64-cve.cfg':
    config             => "${mock_path}/pupent-1.2-el4-x86_64-cve.cfg",
    build_root         => 'pupent-1.2-el4-x86_64-cve',
    target_arch        => 'x86_64',
    dist               => 'el4',
    dist_macro         => '.el4',
    base_repo_baseurl  => 'http://vault.centos.org/4.9/os/x86_64/',
    pe_repo_baseurl    => 'http://neptune.puppetlabs.lan/1.2/repos/el-4-x86_64',
  }

  rpmbuilder::mock::pe_config { 'pupent-1.2-el5-i386-cve.cfg':
    config             => "${mock_path}/pupent-1.2-el5-i386-cve.cfg",
    build_root         => 'pupent-1.2-el5-i386-cve',
    target_arch        => 'i386',
    dist               => 'el5',
    dist_macro         => '.el5',
    base_repo_baseurl  => 'http://yo.puppetlabs.lan/cent5latestserver-i386/RPMS.os',
    pe_repo_baseurl    => 'http://neptune.puppetlabs.lan/1.2/repos/el-5-i386/',
   }

  rpmbuilder::mock::pe_config { 'pupent-1.2-el5-x86_64-cve.cfg':
    config               => "${mock_path}/pupent-1.2-el5-x86_64-cve.cfg",
    build_root           => 'pupent-1.2-el5-x86_64-cve',
    target_arch          => 'x86_64',
    dist                 => 'el5',
    dist_macro           => '.el5',
    base_repo_baseurl    => 'http://yo.puppetlabs.lan/cent5latestserver-x86_64/RPMS.os',
    pe_repo_baseurl      => 'http://neptune.puppetlabs.lan/1.2/repos/el-5-x86_64',
  }

  rpmbuilder::mock::pe_config { 'pupent-1.2-el6-i386-cve.cfg':
    config             => "${mock_path}/pupent-1.2-el6-i386-cve.cfg",
    build_root         => 'pupent-1.2-el6-i386-cve',
    target_arch        => 'i386',
    dist               => 'el6',
    base_repo_baseurl  => 'http://yo.puppetlabs.lan/cent6latestserver-i386/RPMS.os',
    pe_repo_baseurl    => 'http://neptune.puppetlabs.lan/1.2/repos/el-6-i386',
    failover_priority  => 'base',
  }

  rpmbuilder::mock::pe_config { 'pupent-1.2-el6-x86_64-cve.cfg':
    config             => "${mock_path}/pupent-1.2-el6-x86_64-cve.cfg",
    build_root         => 'pupent-1.2-el6-x86_64-cve',
    target_arch        => 'x86_64',
    dist               => 'el6',
    base_repo_baseurl  => 'http://yo.puppetlabs.lan/cent6latestserver-x86_64/RPMS.os',
    pe_repo_baseurl    => 'http://neptune.puppetlabs.lan/1.2/repos/el-6-x86_64',
  }

  rpmbuilder::mock::pe_config { 'pupent-2.0-el4-i386-cve.cfg':
    config             => "${mock_path}/pupent-2.0-el4-i386-cve.cfg",
    build_root         => 'pupent-2.0-el4-i386-cve',
    target_arch        => 'i386',
    dist               => 'el4',
    dist_macro         => '.el4',
    base_repo_baseurl  => 'http://vault.centos.org/4.9/os/i386',
    pe_repo_baseurl    => 'http://neptune.puppetlabs.lan/2.0/repos/el-4-i386',
  }

  rpmbuilder::mock::pe_config { 'pupent-2.0-el4-x86_64-cve.cfg':
    config             => "${mock_path}/pupent-2.0-el4-x86_64-cve.cfg",
    build_root         => 'pupent-2.0-el4-x86_64-cve',
    target_arch        => 'x86_64',
    dist               => 'el4',
    dist_macro         => '.el4',
    base_repo_baseurl  => 'http://vault.centos.org/4.9/os/x86_64/',
    pe_repo_baseurl    => 'http://neptune.puppetlabs.lan/2.0/repos/el-4-x86_64',
  }

  rpmbuilder::mock::pe_config { 'pupent-2.0-el5-i386-cve.cfg':
    config               => "${mock_path}/pupent-2.0-el5-i386-cve.cfg",
    build_root           => 'pupent-2.0-el5-i386-cve',
    target_arch          => 'i386',
    dist                 => 'el5',
    dist_macro           => '.el5',
    base_repo_baseurl    => 'http://yo.puppetlabs.lan/cent5latestserver-i386/RPMS.os',
    pe_repo_baseurl      => 'http://neptune.puppetlabs.lan/2.0/repos/el-5-i386/',
  }

  rpmbuilder::mock::pe_config { 'pupent-2.0-el5-x86_64-cve.cfg':
    config               => "${mock_path}/pupent-2.0-el5-x86_64-cve.cfg",
    build_root           => 'pupent-2.0-el5-x86_64-cve',
    target_arch          => 'x86_64',
    dist                 => 'el5',
    dist_macro           => '.el5',
    base_repo_baseurl    => 'http://yo.puppetlabs.lan/cent5latestserver-x86_64/RPMS.os',
    pe_repo_baseurl      => 'http://neptune.puppetlabs.lan/2.0/repos/el-5-x86_64',
  }

  rpmbuilder::mock::pe_config { 'pupent-2.0-el6-i386-cve.cfg':
    config             => "${mock_path}/pupent-2.0-el6-i386-cve.cfg",
    build_root         => 'pupent-2.0-el6-i386-cve',
    target_arch        => 'i386',
    dist               => 'el6',
    base_repo_baseurl  => 'http://yo.puppetlabs.lan/cent6latestserver-i386/RPMS.os',
    pe_repo_baseurl    => 'http://neptune.puppetlabs.lan/2.0/repos/el-6-i386',
    failover_priority  => 'base',
  }

  rpmbuilder::mock::pe_config { 'pupent-2.0-el6-x86_64-cve.cfg':
    config             => "${mock_path}/pupent-2.0-el6-x86_64-cve.cfg",
    build_root         => 'pupent-2.0-el6-x86_64-cve',
    target_arch        => 'x86_64',
    dist               => 'el6',
    base_repo_baseurl  => 'http://yo.puppetlabs.lan/cent6latestserver-x86_64/RPMS.os',
    pe_repo_baseurl    => 'http://neptune.puppetlabs.lan/2.0/repos/el-6-x86_64',
  }

  rpmbuilder::mock::pe_config { 'pupent-el4-i386.cfg':
    config             => "${mock_path}/pupent-el4-i386.cfg",
    build_root         => 'pupent-el4-i386',
    target_arch        => 'i386',
    dist               => 'el4',
    base_repo_baseurl  => 'http://vault.centos.org/4.9/os/i386',
    pe_repo_baseurl    => 'http://neptune.puppetlabs.lan/2.0/repos/el-4-i386',
  }

  rpmbuilder::mock::pe_config { 'pupent-el4-x86_64.cfg':
    config             => "${mock_path}/pupent-el4-x86_64.cfg",
    build_root         => 'pupent-el4-x86_64',
    target_arch        => 'x86_64',
    dist               => 'el4',
    base_repo_baseurl  => 'http://vault.centos.org/4.9/os/x86_64/',
    pe_repo_baseurl    => 'http://neptune.puppetlabs.lan/2.0/repos/el-4-x86_64',
  }

  rpmbuilder::mock::pe_config { 'pupent-el5-i386.cfg':
    config               => "${mock_path}/pupent-el5-i386.cfg",
    build_root           => 'pupent-el5-i386',
    target_arch          => 'i386',
    dist                 => 'el5',
    dist_macro           => '.el5',
    base_repo_baseurl    => 'http://mirrors.cat.pdx.edu/centos/5/os/i386/',
    pe_repo_baseurl      => 'http://neptune.puppetlabs.lan/2.5/repos/el-5-i386/',
  }

  rpmbuilder::mock::pe_config { 'pupent-el5-x86_64.cfg':
    config               => "${mock_path}/pupent-el5-x86_64.cfg",
    build_root           => 'pupent-el5-x86_64',
    target_arch          => 'x86_64',
    dist                 => 'el5',
    dist_macro           => '.el5',
    base_repo_baseurl    => 'http://yo.puppetlabs.lan/cent5latestserver-x86_64/RPMS.os',
    pe_repo_baseurl      => 'http://neptune.puppetlabs.lan/2.5/repos/el-5-x86_64',
  }

  rpmbuilder::mock::pe_config { 'pupent-el6-i386.cfg':
    config               => "${mock_path}/pupent-el6-i386.cfg",
    build_root           => 'pupent-el6-i386',
    target_arch          => 'i386',
    dist                 => 'el6',
    base_repo_baseurl    => 'http://mirrors.cat.pdx.edu/centos/6/os/i386/',
    pe_repo_baseurl      => 'http://neptune.puppetlabs.lan/2.5/repos/el-6-i386',
  }

  rpmbuilder::mock::pe_config { 'pupent-el6-x86_64.cfg':
    config             => "${mock_path}/pupent-el6-x86_64.cfg",
    build_root         => 'pupent-el6-x86_64',
    target_arch        => 'x86_64',
    dist               => 'el6',
    base_repo_baseurl  => 'http://yo.puppetlabs.lan/cent6latestserver-x86_64/RPMS.os',
    pe_repo_baseurl    => 'http://neptune.puppetlabs.lan/2.5/repos/el-6-x86_64',
  }

  rpmbuilder::mock::pe_config { 'pupent-extras-el5-i386.cfg':
    config               => "${mock_path}/pupent-extras-el5-i386.cfg",
    build_root           => 'pupent-extras-el5-i386',
    target_arch          => 'i386',
    dist                 => 'el5',
    dist_macro           => '.el5',
    base_repo_baseurl    => 'http://yo.puppetlabs.lan/cent5latestserver-i386/RPMS.os',
    pe_repo_baseurl      => 'http://neptune.puppetlabs.lan/2.5/repos/el-5-i386/',
    extras_repo_baseurl  => 'http://neptune.puppetlabs.lan/2.5/repos/yum-enterprise/el/5/extras/i386',
  }

  rpmbuilder::mock::pe_config { 'pupent-extras-el5-x86_64.cfg':
    config               => "${mock_path}/pupent-extras-el5-x86_64.cfg",
    build_root           => 'pupent-extras-el5-x86_64',
    target_arch          => 'x86_64',
    dist                 => 'el5',
    dist_macro           => '.el5',
    base_repo_baseurl    => 'http://yo.puppetlabs.lan/cent5latestserver-x86_64/RPMS.os',
    pe_repo_baseurl      => 'http://neptune.puppetlabs.lan/2.5/repos/el-5-x86_64',
    extras_repo_baseurl  => 'http://neptune.puppetlabs.lan/2.5/repos/yum-enterprise/el/5/extras/x86_64',
  }

  rpmbuilder::mock::pe_config { 'pupent-extras-el6-i386.cfg':
    config               => "${mock_path}/pupent-extras-el6-i386.cfg",
    build_root           => 'pupent-extras-el6-i386',
    target_arch          => 'i386',
    dist                 => 'el6',
    base_mirrorlist      => 'http://mirrorlist.centos.org/?release=6&arch=i386&repo=os',
    pe_repo_baseurl      => 'http://neptune.puppetlabs.lan/2.5/repos/el-6-i386',
    extras_repo_baseurl  => 'http://neptune.puppetlabs.lan/2.5/repos/yum-enterprise/el/6/extras/i386',
  }

  rpmbuilder::mock::pe_config { 'pupent-extras-el6-x86_64.cfg':
    config               => "${mock_path}/pupent-extras-el6-x86_64.cfg",
    build_root           => 'pupent-extras-el6-x86_64',
    target_arch          => 'x86_64',
    dist                 => 'el6',
    base_repo_baseurl    => 'http://yo.puppetlabs.lan/cent6latestserver-x86_64/RPMS.os',
    pe_repo_baseurl      => 'http://neptune.puppetlabs.lan/2.5/repos/el-6-x86_64',
    extras_repo_baseurl  => 'http://neptune.puppetlabs.lan/2.5/repos/yum-enterprise/el/6/extras/x86_64',
  }

  rpmbuilder::mock::pe_config { 'pupent-fc15-i386.cfg':
    config             => "${mock_path}/pupent-fc15-i386.cfg",
    build_root         => 'pupent-fc15-i386',
    target_arch        => 'i386',
    legal_host_arches  => 'i386',
    dist               => 'fc15',
    base_repo_baseurl  => 'http://localhost/os/fc/15/i386',
    pe_repo_baseurl    => 'file:///tmp/output/pe/fc/15/i386',
  }

  rpmbuilder::mock::pe_config { 'pupent-fc15-x86_64.cfg':
    config             => "${mock_path}/pupent-fc15-x86_64.cfg",
    build_root         => 'pupent-fc15-x86_64',
    target_arch        => 'x86_64',
    legal_host_arches  => 'x86_64',
    dist               => 'fc15',
    base_repo_baseurl  => 'http://localhost/os/fc/15/x86_64',
    pe_repo_baseurl    => 'file:///tmp/output/pe/fc/15/x86_64',
  }
}
