require 'spec_helper'

describe 'rpmbuilder::mock::puppetlabs_mocks', :type => 'class' do
  [{},
    { :vendor           => "Puppet Labs" },
    { :proxy            => "http://proxy.puppetlabs.com:1234" },
    { :fedora_releases  => ["18"] },
    { :el_releases      => ["7"] },
  ].each do |param_set|
    describe "when #{param_set == {} ? "using default" : "specifying"} class parameters" do
      default_params = {
          :vendor           => "Puppet User",
          :proxy            => nil,
          :fedora_releases  => ["15","16","17"],
          :el_releases      => ["5","6"],
        }

      param_hash = default_params.merge(param_set)

      let :params do
        param_set
      end

      context 'Each Puppet Labs mock configuration file should be present' do
        param_hash[:fedora_releases].each do |fedora|
          it do
            should contain_Rpmbuilder__Mock__Pl_mocks(fedora).with(
            {
              :vendor   => param_hash[:vendor],
              :proxy    => param_hash[:proxy],
              :dist     => "fedora",
            })
          end
        end

        param_hash[:el_releases].each do |el|
          it do
            should contain_Rpmbuilder__Mock__Pl_mocks(el).with(
            {
              :vendor   => param_hash[:vendor],
              :proxy    => param_hash[:proxy],
              :dist     => "el",
            })
          end
        end
      end
    end
  end
end
