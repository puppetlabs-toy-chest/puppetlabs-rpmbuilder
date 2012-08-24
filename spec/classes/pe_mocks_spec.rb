require 'spec_helper'

describe 'rpmbuilder::mock::pe_config', :type => 'class' do

  context 'Each Puppet Labs Enterprise mock configuration file should be present' do

  let(:pre_condition) do
    'package { "mock": ensure => present }'
  end

  configs = [
    'pupent-1.1-el4-i386-cve.cfg',
    'pupent-1.1-el4-x86_64-cve.cfg',
    'pupent-1.1-el5-i386-cve.cfg',
    'pupent-1.1-el5-x86_64-cve.cfg',
    'pupent-1.1-el6-i386-cve.cfg',
    'pupent-1.1-el6-x86_64-cve.cfg',
    'pupent-1.2-el4-i386-cve.cfg',
    'pupent-1.2-el4-x86_64-cve.cfg',
    'pupent-1.2-el5-i386-cve.cfg',
    'pupent-1.2-el5-x86_64-cve.cfg',
    'pupent-1.2-el6-i386-cve.cfg',
    'pupent-1.2-el6-x86_64-cve.cfg',
    'pupent-2.0-el4-i386-cve.cfg',
    'pupent-2.0-el4-x86_64-cve.cfg',
    'pupent-2.0-el5-i386-cve.cfg',
    'pupent-2.0-el5-x86_64-cve.cfg',
    'pupent-2.0-el6-i386-cve.cfg',
    'pupent-2.0-el6-x86_64-cve.cfg',
    'pupent-el4-i386.cfg',
    'pupent-el4-x86_64.cfg',
    'pupent-el5-i386.cfg',
    'pupent-el5-x86_64.cfg',
    'pupent-el6-i386.cfg',
    'pupent-el6-x86_64.cfg',
    'pupent-extras-el5-i386.cfg',
    'pupent-extras-el5-x86_64.cfg',
    'pupent-extras-el6-i386.cfg',
    'pupent-extras-el6-x86_64.cfg',
    'pupent-fc15-i386.cfg',
    'pupent-fc15-x86_64.cfg'
  ]

    configs.each do|config|
      it { should contain_Pe_mock__Config("#{config}")  }
    end
  end
end
