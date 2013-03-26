require 'spec_helper'

describe 'rpmbuilder::mock::pe_mocks', :type => 'class' do

  [{
    :pe_vers    => ["1.2","2.0","2.5","2.6","2.7"],
    :mock_root  => "/etc/mock",
  },
  {
    :pe_vers    => ["2.8","2.9","3.0"],
    :mock_root  => "/opt/mock",
  }].each do |param_set|
    describe "when #{param_set[:mock_root] == "/etc/mock" ? "using default params" : "specifying parameters"}" do
      context 'Each Puppet Labs Enterprise mock configuration file should be present' do

        let(:params) do
          param_set
        end

        param_set[:pe_vers].each do | pe_mock |
          it do should contain_Rpmbuilder__mock__pe_mockset(pe_mock).with({
            :mock_root  => param_set[:mock_root],
          })
          end
        end

        [5,6].each do |rel|
          ["i386","x86_64"].each do |arch|
            describe "Should have an extras config for el#{rel.to_s}-#{arch}" do
              it { should contain_Rpmbuilder__mock__Pe_Mock("pupent-extras-el#{rel.to_s}-#{arch}").with({
                :pe_ver     => "2.5",
                :arch       => arch,
                :release    => rel.to_s,
                :mock_root  => param_set[:mock_root],
              })}
            end
          end
        end
      end
    end
  end
end
