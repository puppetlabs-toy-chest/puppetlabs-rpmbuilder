class rpmbuilder::mock::cleanup(
  $on_success = true,
  $on_failure = true,
) {


  # Python is awesome, in that it's true and false boolean
  # values are Camel-cased: True and False. Subsequently,
  # any values you pass in to a boolean configuration options
  # must respect the aforementioned camel-casing. Might be worth
  # adding a camel method for strings into stdlib?
  $failure = $on_failure ? {
    /(?i:false)/ => 'False',
    /(?i:true)/  => 'True',
  }

  $success = $on_success ? {
    /(?i:false)/ => 'False',
    /(?i:true)/  => 'True',
  }

  ini_setting { "Cleanup on success":
    ensure  => present,
    path    => '/etc/mock/site-defaults.cfg',
    section => '',
    setting => "config_opts['cleanup_on_success']",
    value   => $cleanup_on_success,
  }

  ini_setting { "Cleanup on failure":
    ensure  => present,
    path    => '/etc/mock/site-defaults.cfg',
    section => '',
    setting => "config_opts['cleanup_on_failure']",
    value   => $cleanup_on_failure,
  }
}
