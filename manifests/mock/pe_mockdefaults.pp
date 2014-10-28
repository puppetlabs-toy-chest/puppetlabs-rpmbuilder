# Copies the cfg erbs for mocks to /etc/mock
class rpmbuilder::mock::pe_mockdefaults(
  $mock_root = '/etc/mock'
)  {
  file { "${mock_root}/pupent-el4-i386.cfg.erb":
    ensure => file,
    owner  => 'root',
    group  => 'mock',
    source => 'puppet:///modules/rpmbuilder/pupent-el4-i386.cfg.erb',
    mode   => '0644',
  }
  file { "${mock_root}/pupent-el4-x86_64.cfg.erb":
    ensure => file,
    owner  => 'root',
    group  => 'mock',
    source => 'puppet:///modules/rpmbuilder/pupent-el4-x86_64.cfg.erb',
    mode   => '0644',
  }
  file { "${mock_root}/pupent-el5-i386.cfg.erb":
    ensure => file,
    owner  => 'root',
    group  => 'mock',
    source => 'puppet:///modules/rpmbuilder/pupent-el5-i386.cfg.erb',
    mode   => '0644',
  }
  file { "${mock_root}/pupent-el5-x86_64.cfg.erb":
    ensure => file,
    owner  => 'root',
    group  => 'mock',
    source => 'puppet:///modules/rpmbuilder/pupent-el5-x86_64.cfg.erb',
    mode   => '0644',
  }
  file { "${mock_root}/pupent-el6-i386.cfg.erb":
    ensure => file,
    owner  => 'root',
    group  => 'mock',
    source => 'puppet:///modules/rpmbuilder/pupent-el6-i386.cfg.erb',
    mode   => '0644',
  }
  file { "${mock_root}/pupent-el6-x86_64.cfg.erb":
    ensure => file,
    owner  => 'root',
    group  => 'mock',
    source => 'puppet:///modules/rpmbuilder/pupent-el6-x86_64.cfg.erb',
    mode   => '0644',
  }
  file { "${mock_root}/pupent-el7-x86_64.cfg.erb":
    ensure => file,
    owner  => 'root',
    group  => 'mock',
    source => 'puppet:///modules/rpmbuilder/pupent-el7-x86_64.cfg.erb',
    mode   => '0644',
  }
  file { "${mock_root}/pupent-eos4-i386.cfg.erb":
    ensure => file,
    owner  => 'root',
    group  => 'mock',
    source => 'puppet:///modules/rpmbuilder/pupent-eos4-i386.cfg.erb',
    mode   => '0644',
  }
  file { "${mock_root}/pupent-sles10-i386.cfg.erb":
    ensure => file,
    owner  => 'root',
    group  => 'mock',
    source => 'puppet:///modules/rpmbuilder/pupent-sles10-i386.cfg.erb',
    mode   => '0644',
  }
  file { "${mock_root}/pupent-sles10-x86_64.cfg.erb":
    ensure => file,
    owner  => 'root',
    group  => 'mock',
    source => 'puppet:///modules/rpmbuilder/pupent-sles10-x86_64.cfg.erb',
    mode   => '0644',
  }
  file { "${mock_root}/pupent-sles11-i386.cfg.erb":
    ensure => file,
    owner  => 'root',
    group  => 'mock',
    source => 'puppet:///modules/rpmbuilder/pupent-sles11-i386.cfg.erb',
    mode   => '0644',
  }
  file { "${mock_root}/pupent-sles11-x86_64.cfg.erb":
    ensure => file,
    owner  => 'root',
    group  => 'mock',
    source => 'puppet:///modules/rpmbuilder/pupent-sles11-x86_64.cfg.erb',
    mode   => '0644',
  }
  file { "${mock_root}/pupent-sles12-x86_64.cfg.erb":
    ensure => file,
    owner  => 'root',
    group  => 'mock',
    source => 'puppet:///modules/rpmbuilder/pupent-sles12-x86_64.cfg.erb',
    mode   => '0644',
  }
}
