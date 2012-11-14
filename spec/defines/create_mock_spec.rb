require 'spec_helper'

describe 'rpmbuilder::mock::create_mock', :type  => 'define' do
  context "Mock should create a correct mock config for a given dist, release and arch" do
    [{
      :dist       => "el",
      :release    => "12",
      :proxy      => nil,
      :vendor     => "Puppet User",
      :arch       => "sparc",
      :dev        => false,
      :mock_root  => "/etc/mock",
    },
    {
      :dist       => "fedpalooza",
      :release    => "6",
      :proxy      => "http://proxy.puppetlabs.com:1234",
      :vendor     => "Puppet Labs",
      :arch       => "i386",
      :dev        => true,
      :mock_root  => "/usr/mock",
    }].each do |param_set|
      describe "With mock_root set to #{param_set[:mock_root]}" do
        let :params do
          param_set
        end


        let(:title) { "abcdefg" }

        it { should contain_file(title).with(
          {
            :path     => "#{param_set[:mock_root]}/#{title}.cfg",
            :owner    => "root",
            :group    => "mock",
            :ensure   => "present",
            :mode     => "0644",
          }
        )}
      end
    end
  end
end
