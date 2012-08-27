require 'spec_helper'

describe 'rpmbuilder::mock::pl_config', :type => 'define' do

  let(:title) { 'pl-mock' }
  context 'Given some parameters, a configuration should be created' do

    let(:params) {{
      :config               => '/etc/mock/pl-5-i386.cfg-test',
      :build_root           => 'pl-5-i386',
      :target_arch          => 'i386',
      :dist                 => 'el5',
      :dist_macro           => '.el5',
      :base_mirrorlist      => 'http://mirrorlist.centos.org/?release=5&arch=i386&repo=os',
      :updates_mirrorlist   => 'http://mirrorlist.centos.org/?release=5&arch=i386&repo=updates',
      :puppet_prod_baseurl  => 'http://yum.puppetlabs.com/el/5/products/i386',
      :puppet_deps_baseurl  => 'http://yum.puppetlabs.com/el/5/dependencies/i386',
      :epel_repo_mirrorlist => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-5&arch=i386',
      :failover_priority    => 'base',
     }}

    it 'should generate valid content for the mock configuration file' do
        content = catalogue.resource('file', "#{params[:config]}").send(:parameters)[:content]
        content.should_not be_empty
    end

    it do should contain_file("#{params[:config]}").with({
      'ensure'  => 'present',
      'require' => 'Package[mock]'
      })  end
  end
end
