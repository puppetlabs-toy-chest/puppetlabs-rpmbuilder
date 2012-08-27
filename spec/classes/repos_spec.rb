require 'spec_helper'

describe 'rpmbuilder::repos', :type => 'class' do

  context "On a Fedora OS" do
    baseurlOS = 'fedora'
    let(:facts) {{
      :operatingsystem => 'fedora',
      :os_maj_version  => '16',
      :architecture    => 'i386',
     }}

    it {
      should contain_yumrepo('puppetlabs-products').with( 
      { 'baseurl' => "http://yum.puppetlabs.com/#{baseurlOS}/f#{facts[:os_maj_version]}/products/#{facts[:architecture]}" } )
      should contain_yumrepo('puppetlabs-deps').with( 
      { 'baseurl' => "http://yum.puppetlabs.com/#{baseurlOS}/f#{facts[:os_maj_version]}/dependencies/#{facts[:architecture]}" } )
       should contain_yumrepo('puppetlabs-products-source').with( 
      { 'baseurl' => "http://yum.puppetlabs.com/#{baseurlOS}/f#{facts[:os_maj_version]}/products/SRPMS" } )
       should contain_yumrepo('puppetlabs-deps-source').with( 
      { 'baseurl' => "http://yum.puppetlabs.com/#{baseurlOS}/f#{facts[:os_maj_version]}/dependencies/SRPMS" } )
    }

  end

  context "On a non-Fedora OS" do
    let(:facts) {{ :operatingsystem => 'centos', :osfamily => 'RedHat' }}

    it { should include_class("epel") }

  end
end
