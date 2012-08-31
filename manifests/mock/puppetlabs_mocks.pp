class rpmbuilder::mock::puppetlabs_mocks {

  $mock_path = '/etc/mock'

  Package['mock'] -> Rpmbuilder::Mock::Pl_config<| |>

  rpmbuilder::mock::pl_config { 'pl-5-i386.cfg':
    config               => "${mock_path}/pl-5-i386.cfg",
    build_root           => 'pl-5-i386',
    target_arch          => 'i386',
    dist                 => 'el5',
    dist_macro           => '.el5',
    base_mirrorlist      => 'http://mirrorlist.centos.org/?release=5&arch=i386&repo=os',
    updates_mirrorlist   => 'http://mirrorlist.centos.org/?release=5&arch=i386&repo=updates',
    puppet_prod_baseurl  => 'http://yum.puppetlabs.com/el/5/products/i386',
    puppet_deps_baseurl  => 'http://yum.puppetlabs.com/el/5/dependencies/i386',
    epel_repo_mirrorlist => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-5&arch=i386',
    failover_priority    => 'base',
  }

  rpmbuilder::mock::pl_config { 'pl-5-i386-dev.cfg':
    config               => "${mock_path}/pl-5-i386-dev.cfg",
    build_root           => 'pl-5-i386-dev',
    target_arch          => 'i386',
    dist                 => 'el5',
    dist_macro           => '.el5',
    base_mirrorlist      => 'http://mirrorlist.centos.org/?release=5&arch=i386&repo=os',
    updates_mirrorlist   => 'http://mirrorlist.centos.org/?release=5&arch=i386&repo=updates',
    puppet_prod_baseurl  => 'http://yum.puppetlabs.com/el/5/products/i386',
    puppet_deps_baseurl  => 'http://yum.puppetlabs.com/el/5/dependencies/i386',
    epel_repo_mirrorlist => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-5&arch=i386',
    failover_priority    => 'base',
  }

  rpmbuilder::mock::pl_config { 'pl-5-x86_64.cfg':
    config                => "${mock_path}/pl-5-x86_64.cfg",
    build_root            => 'pl-5-x86_64',
    target_arch           => 'x86_64',
    dist                  => 'el5',
    dist_macro            => '.el5',
    base_mirrorlist       => 'http://mirrorlist.centos.org/?release=5&arch=x86_64&repo=os',
    updates_mirrorlist    => 'http://mirrorlist.centos.org/?release=5&arch=x86_64&repo=updates',
    puppet_prod_baseurl   => 'http://yum.puppetlabs.com/el/5/products/x86_64',
    puppet_deps_baseurl   => 'http://yum.puppetlabs.com/el/5/dependencies/x86_64',
    epel_repo_mirrorlist  => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-5&arch=x86_64',
    failover_priority     => 'base',
  }

  rpmbuilder::mock::pl_config { 'pl-5-x86_64-dev.cfg':
    config                => "${mock_path}/pl-5-x86_64-dev.cfg",
    build_root            => 'pl-5-x86_64-dev',
    target_arch           => 'x86_64',
    dist                  => 'el5',
    dist_macro            => '.el5',
    base_mirrorlist       => 'http://mirrorlist.centos.org/?release=5&arch=x86_64&repo=os',
    updates_mirrorlist    => 'http://mirrorlist.centos.org/?release=5&arch=x86_64&repo=updates',
    puppet_prod_baseurl   => 'http://yum.puppetlabs.com/el/5/products/x86_64/',
    puppet_deps_baseurl   => 'http://yum.puppetlabs.com/el/5/dependencies/x86_64/',
    puppet_dev_baseurl    => 'http://yum.puppetlabs.com/el/5/devel/x86_64/',
    epel_repo_mirrorlist  => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-5&arch=x86_64',
    failover_priority     => 'base',
  }

  rpmbuilder::mock::pl_config { 'pl-6-i386.cfg':
    config                => "${mock_path}/pl-6-i386.cfg",
    build_root            => 'pl-6-i386',
    target_arch           => 'i386',
    dist                  => 'el6',
    base_mirrorlist       => 'http://mirrorlist.centos.org/?release=6&arch=i386&repo=os',
    updates_mirrorlist    => 'http://mirrorlist.centos.org/?release=6&arch=i386&repo=updates',
    puppet_prod_baseurl   => 'http://yum.puppetlabs.com/el/6/products/i386',
    puppet_deps_baseurl   => 'http://yum.puppetlabs.com/el/6/dependencies/i386',
    epel_repo_mirrorlist  => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=i386',
    failover_priority     => 'base',
  }

  rpmbuilder::mock::pl_config { 'pl-6-i386-dev.cfg':
    config                => "${mock_path}/pl-6-i386-dev.cfg",
    build_root            => 'pl-6-i386-dev',
    target_arch           => 'i386',
    dist                  => 'el6',
    base_mirrorlist       => 'http://mirrorlist.centos.org/?release=6&arch=i386&repo=os',
    updates_mirrorlist    => 'http://mirrorlist.centos.org/?release=6&arch=i386&repo=updates',
    puppet_prod_baseurl   => 'http://yum.puppetlabs.com/el/6/products/i386',
    puppet_deps_baseurl   => 'http://yum.puppetlabs.com/el/6/dependencies/i386',
    epel_repo_mirrorlist  => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=i386',
    failover_priority     => 'base',
  }

  rpmbuilder::mock::pl_config { 'pl-6-x86_64.cfg':
    config                => "${mock_path}/pl-6-x86_64.cfg",
    build_root            => 'pl-6-x86_64',
    target_arch           => 'x86_64',
    dist                  => 'el6',
    base_mirrorlist       => 'http://mirrorlist.centos.org/?release=6&arch=x86_64&repo=os',
    updates_mirrorlist    => 'http://mirrorlist.centos.org/?release=6&arch=x86_64&repo=updates',
    puppet_prod_baseurl   => 'http://yum.puppetlabs.com/el/6/products/x86_64',
    puppet_deps_baseurl   => 'http://yum.puppetlabs.com/el/6/dependencies/x86_64',
    epel_repo_mirrorlist  => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=x86_64',
    failover_priority     => 'base',
  }

  rpmbuilder::mock::pl_config { 'pl-6-x86_64-dev.cfg':
    config                => "${mock_path}/pl-6-x86_64-dev.cfg",
    build_root            => 'pl-6-x86_64-dev',
    target_arch           => 'x86_64',
    dist                  => 'el6',
    base_mirrorlist       => 'http://mirrorlist.centos.org/?release=6&arch=x86_64&repo=os',
    updates_mirrorlist    => 'http://mirrorlist.centos.org/?release=6&arch=x86_64&repo=updates',
    puppet_prod_baseurl   => 'http://yum.puppetlabs.com/el/6/products/x86_64/',
    puppet_deps_baseurl   => 'http://yum.puppetlabs.com/el/6/dependencies/x86_64/',
    puppet_dev_baseurl    => 'http://yum.puppetlabs.com/el/6/devel/x86_64/',
    epel_repo_mirrorlist  => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=x86_64',
    failover_priority     => 'base',
  }

  rpmbuilder::mock::pl_config { 'pl-fc15-i386.cfg':
    config                => "${mock_path}/pl-fc15-i386.cfg",
    build_root            => 'pl-fc15-i386',
    target_arch           => 'i686',
    dist                  => 'fc15',
    base_repo_baseurl     => 'http://mirrors.cat.pdx.edu/fedora/linux/releases/15/Fedora/i386/os/',
    updates_repo_baseurl  => 'http://mirrors.cat.pdx.edu/fedora/linux/updates/15/i386',
    puppet_prod_baseurl   => 'http://yum.puppetlabs.com/fedora/f15/products/i386/',
    puppet_deps_baseurl   => 'http://yum.puppetlabs.com/fedora/f15/dependencies/i386/',
  }

  rpmbuilder::mock::pl_config { 'pl-fc15-i386-dev.cfg':
    config                => "${mock_path}/pl-fc15-i386-dev.cfg",
    build_root            => 'pl-fc15-i386-dev',
    target_arch           => 'i686',
    dist                  => 'fc15',
    base_mirrorlist       => 'http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-15&arch=i386',
    updates_mirrorlist    => 'http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f15&arch=i386',
    puppet_prod_baseurl   => 'http://yum.puppetlabs.com/fedora/f15/products/i386/',
    puppet_deps_baseurl   => 'http://yum.puppetlabs.com/fedora/f15/dependencies/i386/',
    puppet_dev_baseurl    => 'http://yum.puppetlabs.com/fedora/f15/devel/i386/',
  }

  rpmbuilder::mock::pl_config { 'pl-fc15-x86_64.cfg':
    config                => "${mock_path}/pl-fc15-x86_64.cfg",
    build_root            => 'pl-fc15-x86_64',
    target_arch           => 'x86_64',
    dist                  => 'fc15',
    base_repo_baseurl     => 'http://mirrors.cat.pdx.edu/fedora/linux/releases/15/Fedora/x86_64/os/',
    updates_repo_baseurl  => 'http://mirrors.cat.pdx.edu/fedora/linux/updates/15/x86_64',
    puppet_prod_baseurl   => 'http://yum.puppetlabs.com/fedora/f15/products/x86_64/',
    puppet_deps_baseurl   => 'http://yum.puppetlabs.com/fedora/f15/dependencies/x86_64/',
  }

  rpmbuilder::mock::pl_config { 'pl-fc15-x86_64-dev.cfg':
    config                => "${mock_path}/pl-fc15-x86_64-dev.cfg",
    build_root            => 'pl-fc15-x86_64-dev',
    target_arch           => 'x86_64',
    dist                  => 'fc15',
    base_mirrorlist       => 'http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-15&arch=x86_64',
    updates_mirrorlist    => 'http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f15&arch=x86_64',
    puppet_prod_baseurl   => 'http://yum.puppetlabs.com/fedora/f15/products/x86_64/',
    puppet_deps_baseurl   => 'http://yum.puppetlabs.com/fedora/f15/dependencies/x86_64/',
    puppet_dev_baseurl    => 'http://yum.puppetlabs.com/fedora/f15/devel/x86_64/',
  }

  rpmbuilder::mock::pl_config { 'pl-fc16-i386.cfg':
    config                => "${mock_path}/pl-fc16-i386.cfg",
    build_root            => 'fedora-16-i386',
    target_arch           => 'i386',
    dist                  => 'fc16',
    base_repo_baseurl     => 'http://mirrors.cat.pdx.edu/fedora/linux/releases/16/Fedora/i386/os/',
    updates_repo_baseurl  => 'http://mirrors.cat.pdx.edu/fedora/linux/updates/16/i386',
    puppet_prod_baseurl   => 'http://yum.puppetlabs.com/fedora/f16/products/i386/',
    puppet_deps_baseurl   => 'http://yum.puppetlabs.com/fedora/f16/dependencies/i386/',
  }

  rpmbuilder::mock::pl_config { 'pl-fc16-i386-dev.cfg':
    config                => "${mock_path}/pl-fc16-i386-dev.cfg",
    build_root            => 'pl-fc16-i386-dev',
    target_arch           => 'x86_64',
    dist                  => 'i686',
    base_repo_baseurl     => 'http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-16&arch=i386',
    updates_repo_baseurl  => 'http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f16&arch=i386',
    puppet_prod_baseurl   => 'http://yum.puppetlabs.com/fedora/f16/products/i386/',
    puppet_deps_baseurl   => 'http://yum.puppetlabs.com/fedora/f16/dependencies/i386/',
    puppet_dev_baseurl    => 'http://yum.puppetlabs.com/fedora/f16/devel/i386/',
  }

  rpmbuilder::mock::pl_config { 'pl-fc16-x86_64.cfg':
    config                => "${mock_path}/pl-fc16-x86_64.cfg",
    build_root            => 'pl-fc16-x86_64',
    target_arch           => 'x86_64',
    dist                  => 'fc16',
    base_repo_baseurl     => 'http://mirrors.cat.pdx.edu/fedora/linux/releases/16/Fedora/x86_64/os/',
    updates_repo_baseurl  => 'http://mirrors.cat.pdx.edu/fedora/linux/updates/16/x86_64',
    puppet_prod_baseurl   => 'http://yum.puppetlabs.com/fedora/f16/products/x86_64/',
    puppet_deps_baseurl   => 'http://yum.puppetlabs.com/fedora/f16/dependencies/x86_64/',
  }

  rpmbuilder::mock::pl_config { 'pl-fc16-x86_64-dev.cfg':
    config                => "${mock_path}/pl-fc16-x86_64-dev.cfg",
    build_root            => 'fedora-17-x86_64',
    target_arch           => 'x86_64',
    dist                  => 'fc16',
    base_mirrorlist       => 'http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-16&arch=x86_64',
    updates_mirrorlist    => 'http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f16&arch=x86_64',
    puppet_prod_baseurl   => 'http://yum.puppetlabs.com/fedora/f16/products/x86_64/',
    puppet_deps_baseurl   => 'http://yum.puppetlabs.com/fedora/f16/dependencies/x86_64/',
    puppet_dev_baseurl    => 'http://yum.puppetlabs.com/fedora/f16/devel/x86_64/',
  }

  rpmbuilder::mock::pl_config { 'pl-fc17-i386.cfg':
    config                   => "${mock_path}/pl-fc17-i386.cfg",
    build_root               => 'pl-fc17-i386',
    target_arch              => 'i686',
    dist                     => 'fc17',
    base_mirrorlist          => 'http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-17&arch=i386',
    base_debug_mirrorlist    => 'http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-debug-17&arch=i386',
    updates_mirrorlist       => 'http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f17&arch=i386',
    updates_debug_mirrorlist => 'http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-debug-f17&arch=i386',
    puppet_prod_baseurl      => 'http://yum.puppetlabs.com/fedora/f17/products/i386/',
    puppet_deps_baseurl      => 'http://yum.puppetlabs.com/fedora/f17/dependencies/',
  }

  rpmbuilder::mock::pl_config { 'pl-fc17-i386-dev.cfg':
    config                   => "${mock_path}/pl-fc17-i386-dev.cfg",
    build_root               => 'pl-fc17-i386-dev',
    target_arch              => 'i686',
    dist                     => 'fc17',
    base_mirrorlist          => 'http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-17&arch=i386',
    base_debug_mirrorlist    => 'http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-debug-17&arch=i386',
    updates_mirrorlist       => 'http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f17&arch=i386',
    updates_debug_mirrorlist => 'http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-debug-f17&arch=i386',
    puppet_prod_baseurl      => 'http://yum.puppetlabs.com/fedora/f17/products/i386/',
    puppet_deps_baseurl      => 'http://yum.puppetlabs.com/fedora/f17/dependencies/i386/',
    puppet_dev_baseurl       => 'http://yum.puppetlabs.com/fedora/f17/devel/i386/',
  }

  rpmbuilder::mock::pl_config { 'pl-fc17-x86_64.cfg':
    config                    => "${mock_path}/pl-fc17-x86_64.cfg",
    build_root                => 'pl-fc-17-x86_64',
    target_arch               => 'x86_64',
    dist                      => 'fc17',
    base_mirrorlist           => 'http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-17&arch=x86_64',
    base_debug_mirrorlist     => 'http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-debug-17&arch=x86_64',
    updates_mirrorlist        => 'http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f17&arch=x86_64',
    updates_debug_mirrorlist  => 'http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-debug-f17&arch=x86_64',
    puppet_prod_baseurl       => 'http://yum.puppetlabs.com/fedora/f17/products/x86_64/',
    puppet_deps_baseurl       => 'http://yum.puppetlabs.com/fedora/f17/dependencies/x86_64/',
  }

  rpmbuilder::mock::pl_config { 'pl-fc17-x86_64-dev.cfg':
    config                    => "${mock_path}/pl-fc17-x86_64-dev.cfg",
    build_root                => 'pl-fc17-x86_64-dev',
    target_arch               => 'x86_64',
    dist                      => 'fc17',
    base_mirrorlist           => 'http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-17&arch=x86_64',
    base_debug_mirrorlist     => 'http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-debug-17&arch=i386',
    updates_mirrorlist        => 'http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f17&arch=x86_64',
    updates_debug_mirrorlist  => 'http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-debug-f17&arch=i386',
    puppet_prod_baseurl       => 'http://yum.puppetlabs.com/fedora/f17/products/x86_64/',
    puppet_deps_baseurl       => 'http://yum.puppetlabs.com/fedora/f17/dependencies/x86_64/',
    puppet_dev_baseurl        => 'http://yum.puppetlabs.com/fedora/f17/devel/x86_64/',
  }
}

