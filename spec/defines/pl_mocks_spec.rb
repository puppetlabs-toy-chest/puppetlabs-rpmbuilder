require 'spec_helper'

describe 'rpmbuilder::mock::pl_mocks', :type => 'define' do
  let(:default_params) do
    { :dist   => nil,
      :vendor => "Puppet User",
      :proxy  => nil,
    }
  end

  [{},
  {
    :dist   => "5",
    :vendor => "Puppet Labs",
    :proxy  => "http://proxy.puppetlabs.com:1234",
  }].each do |param_set|
    let(:param_hash) do
      default_params.merge(param_set)
    end

    let(:params) do
      param_set
    end

    ["i386","x86_64"].each do |arch|
      [true,false].each do |dev|
        describe "With arch of #{arch} and dev set to #{dev.to_s}" do
          let(:title) do "solaris" end
          let(:mock_title) do
            "pl-#{param_hash[:dist]}-#{title}-#{arch}#{dev ? "-dev" : ""}"
          end

          it { should contain_Rpmbuilder__Mock__Create_mock(mock_title).with(
            {
              :dist     => param_hash[:dist],
              :release  => title,
              :proxy    => param_hash[:proxy],
              :vendor   => param_hash[:vendor],
              :arch     => arch,
              :dev      => dev,
            })
          }
        end
      end
    end

  end
end
