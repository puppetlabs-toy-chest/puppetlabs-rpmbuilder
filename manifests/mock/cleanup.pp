class rpmbuilder::mock::cleanup(
  $on_success = true,
  $on_failure = true,
) {

  ini_setting { "Cleanup on success":
    ensure  => present,
    path    => '/etc/mock/site-defaults.cfg',
    section => '',
    setting => "config_opts['cleanup_on_success']",
    value   => capitalize("$on_success"),
    require => Package['mock'],
  }

  ini_setting { "Cleanup on failure":
    ensure  => present,
    path    => '/etc/mock/site-defaults.cfg',
    section => '',
    setting => "config_opts['cleanup_on_failure']",
    value   => capitalize("$on_failure"),
    require => Package['mock'],
  }
}
