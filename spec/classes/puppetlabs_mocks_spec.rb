require 'spec_helper'

describe 'rpmbuilder::mock::puppetlabs_mocks', :type => 'class' do

  context 'Each Puppet Labs mock configuration file should be present' do

  configs = [
    'pl-5-i386.cfg',
    'pl-5-i386-dev.cfg',
    'pl-5-x86_64.cfg',
    'pl-5-x86_64-dev.cfg',
    'pl-6-i386.cfg',
    'pl-6-i386-dev.cfg',
    'pl-6-x86_64.cfg',
    'pl-6-x86_64-dev.cfg',
    'pl-fc15-i386.cfg',
    'pl-fc15-x86_64.cfg',
    'pl-fc15-x86_64-dev.cfg',
    'pl-fc16-i386.cfg',
    'pl-fc16-i386-dev.cfg',
    'pl-fc16-x86_64.cfg',
    'pl-fc17-i386.cfg',
    'pl-fc17-i386-dev.cfg',
    'pl-fc17-x86_64.cfg',
    'pl-fc17-x86_64-dev.cfg'
  ]

    configs.each do|config|
      it { should contain_Rpmbuilder__Mock__Pl_config("#{config}")  }
    end
  end
end

