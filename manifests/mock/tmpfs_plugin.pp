class rpmbuilder::mock::tmpfs_plugin {
  ini_setting { "Use tmpfs":
    ensure  => present,
    path    => '/etc/mock/site-defaults.cfg',
    section => '',
    setting => "config_opts['plugin_conf']['tmpfs_enable']",
    value   => 'True',
    require => Package['mock'],
  }
  ini_setting { "tmpfs Required RAM":
    ensure  => present,
    path    => '/etc/mock/site-defaults.cfg',
    section => '',
    setting => "config_opts['plugin_conf']['tmpfs_opts']['required_ram_mb']",
    value   => $rpmbuilder::tmpfs_req_ram,
    require => Package['mock'],
  }
  ini_setting { "tmpfs max FS size":
    ensure  => present,
    path    => '/etc/mock/site-defaults.cfg',
    section => '',
    setting => "config_opts['plugin_conf']['tmpfs_opts']['max_fs_size']",
    value   => "'${rpmbuilder::tmpfs_max_size}'",
    require => Package['mock'],
  }
}
