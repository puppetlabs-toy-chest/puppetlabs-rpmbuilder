# This class brings in extra packages which may be helpful in packaging.

class rpmbuilder::packages::extra {
  $extra_packages = [
    'rubygem-bundler',
    'cowsay',
  ]

  package { $extra_packages: ensure => present, }

}
