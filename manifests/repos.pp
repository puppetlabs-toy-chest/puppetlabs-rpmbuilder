class rpmbuilder::repos {

  $baseurlOS = $operatingsystem ? {
    'fedora'  => 'fedora',
    default   => 'el',
  }

  if $::osfamily == 'RedHat' and $::operatingsystem != 'Fedora' {
    include epel
   }

  yumrepo { 'puppetlabs-products':
      baseurl   => "http://yum.puppetlabs.com/${baseurlOS}/${::os_maj_version}/products/${::architecture}",
      enabled   => '1',
      gpgcheck  => '1',
      gpgkey    => 'http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs',
      descr     => "Puppet Labs Products ${::os_maj_version} - ${::architecture}",
  }

  yumrepo { 'puppetlabs-deps':
      baseurl   => "http://yum.puppetlabs.com/${baseurlOS}/${::os_maj_version}/dependencies/${::architecture}",
      enabled   => '1',
      gpgcheck  => '1',
      gpgkey    => 'http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs',
      descr     => "Puppet Labs Dependencies ${::os_maj_version} - ${::architecture}",
  }

  yumrepo { 'puppetlabs-products-source':
      baseurl         => "http://yum.puppetlabs.com/${baseurlOS}/${::os_maj_version}/SRPMS",
      failovermethod  => 'priority',
      enabled         => '0',
      gpgcheck        => '1',
      gpgkey          => 'http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs',
      descr           => "Puppet Labs Products ${::os_maj_version} - ${::architecture} - Source",
  }

  yumrepo { 'puppetlabs-deps-source':
      baseurl   => "http://yum.puppetlabs.com/${baseurlOS}/${::os_maj_version}/dependencies/SRPMS",
      enabled   => '0',
      gpgcheck  => '1',
      gpgkey    => 'http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs',
      descr     => "Puppet Labs Source Dependencies ${::os_maj_version} - Source",
  }
}
