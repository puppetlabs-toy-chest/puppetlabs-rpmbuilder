require 'spec_helper'

describe 'rpmbuilder', :type => 'class' do
  let(:default_params) do
    {
      :fedora_releases  => nil,
      :el_releases      => nil,
      :vendor           => nil,
      :mock_root        => nil,
      :proxy            => nil,
      :pe               => false,
      :pe_vers          => nil,
      :add_pl_repos     => true,
    }
  end

  [{},
  {
      :fedora_releases  => ["15","16","17"],
      :el_releases      => ["5","6"],
      :vendor           => "Puppet Labs",
      :mock_root        => "/usr/mock",
      :proxy            => "http://proxy.puppetlabs.com:1234",
      :pe               => true,
      :pe_vers          => ["1.2","lance"],
      :add_pl_repos     => false,
   }].each do |param_set|
    let(:param_hash) do
      default_params.merge(param_set)
    end

    let(:params) do
      param_set
    end

    describe "Using #{param_set == {} ? "default params" : "specifying params"}" do
      it do
        if param_hash[:add_pl_repos]
          should contain_Puppetlabs_yum
        else
          should_not contain_Puppetlabs_yum
        end
      end

      it { should contain_Rpmbuilder__Packages__Essential }

      it { should contain_Rpmbuilder__Mock__Puppetlabs_Mocks.with({
          :fedora_releases    => param_hash[:fedora_releases],
          :el_releases        => param_hash[:el_releases],
          :vendor             => param_hash[:vendor],
          :mock_root          => param_hash[:mock_root],
          :proxy              => param_hash[:proxy],
        })
      }

      it do
        if param_hash[:pe]
          should contain_Rpmbuilder__Mock__Pe_mocks.with({
            :pe_vers      => param_hash[:pe_vers],
            :mock_root    => param_hash[:mock_root],
          })
        end
      end
    end
  end
end
