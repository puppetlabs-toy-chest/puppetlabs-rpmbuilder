require 'spec_helper'

describe 'rpmbuilder::mock::pe_config', :type => 'define' do

  let(:title) { 'pe_mock' }
  context 'Given some parameters, a configuration should be created' do

    let(:params) {{
      :config               => '/etc/mock/pupent-2.0-el6-i386-cve.cfg',
      :build_root           => 'pupent-2.0-el6-i386-cve',
      :target_arch          => 'i386',
      :dist                 => 'el6',
      :base_repo_baseurl    => 'http://yo.puppetlabs.lan/cent6latestserver-i386/RPMS.os',
      :pe_repo_baseurl      => 'http://neptune.puppetlabs.lan/2.0/repos/el-6-i386',
      :failover_priority    => 'base'
   }}

    it 'should generate valid content for the mock configuration file' do
        content = catalogue.resource('file', "#{params[:config]}").send(:parameters)[:content]
        content.should_not be_empty
    end

    it { should contain_file("#{params[:config]}").with_ensure('present') }
  end
end
