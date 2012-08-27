class rpmbuilder::repos {

  case $operatingsystem {
    'fedora': {
      $baseurlOS  = 'fedora'
      $os_version = $os_maj_version ? {
        '15'    => 'f15',
        '16'    => 'f16',
        '17'    => 'f17',
	default => undef,
      }
    }
    default: {
      $baseurlOS  = 'el'
      $os_version = $os_maj_version
    }
  }

  if $::osfamily == 'RedHat' and $::operatingsystem != 'Fedora' {
    include epel
   }

  yumrepo { 'puppetlabs-products':
      baseurl   => "http://yum.puppetlabs.com/${baseurlOS}/${os_version}/products/${::architecture}",
      enabled   => '1',
      gpgcheck  => '1',
      gpgkey    => 'http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs',
      descr     => "Puppet Labs Products ${os_version} - ${::architecture}",
  }

  yumrepo { 'puppetlabs-deps':
      baseurl   => "http://yum.puppetlabs.com/${baseurlOS}/${os_version}/dependencies/${::architecture}",
      enabled   => '1',
      gpgcheck  => '1',
      gpgkey    => 'http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs',
      descr     => "Puppet Labs Dependencies ${os_version} - ${::architecture}",
  }

  yumrepo { 'puppetlabs-products-source':
      baseurl         => "http://yum.puppetlabs.com/${baseurlOS}/${os_version}/products/SRPMS",
      failovermethod  => 'priority',
      enabled         => '0',
      gpgcheck        => '1',
      gpgkey          => 'http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs',
      descr           => "Puppet Labs Products ${os_version} - ${::architecture} - Source",
  }

  yumrepo { 'puppetlabs-deps-source':
      baseurl   => "http://yum.puppetlabs.com/${baseurlOS}/${os_version}/dependencies/SRPMS",
      enabled   => '0',
      gpgcheck  => '1',
      gpgkey    => 'http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs',
      descr     => "Puppet Labs Source Dependencies ${os_version} - Source",
  }
}
