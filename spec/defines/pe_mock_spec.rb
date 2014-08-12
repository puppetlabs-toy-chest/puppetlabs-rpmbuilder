require 'spec_helper'

describe 'rpmbuilder::mock::pe_mock', :type  => 'define' do
  context "PE mock should create a correct mock config for a given pe_version, dist and arch" do

    [
    { :mock_root      => "/etc/mock",
      :pe_ver         => "2.7",
      :dist           => "el",
      :release        => "5",
      :arch           => "i386",
    },
    { :mock_root      => "/opt/mock",
      :pe_ver         => "3.0",
      :dist           => "sles",
      :release        => "6",
      :arch           => "x86_64",
    }
    ].each do |param_set|
      describe "when #{param_set[:mock_root] == "/etc/mock" ? "using default" : "specifying"} class parameters" do
        let :params do
          param_set
        end


        let(:title) { "pupent-#{param_set[:pe_ver]}-#{param_set[:dist]}-#{param_set[:arch]}" }
        let(:expected_pe_repo) { "http:\/\/enterprise.delivery.puppetlabs.net\/#{param_set[:pe_ver]}\/repos\/#{param_set[:dist]}-#{param_set[:release]}-#{param_set[:arch]}"
        }

        it { should contain_file(title).with(
          {
            :path     => "#{param_set[:mock_root]}/#{title}.cfg",
            :owner    => "root",
            :group    => "mock",
            :ensure   => "present",
            :mode     => "0644",
            :content  => /#{expected_pe_repo}/,
          }
        )}
      end
    end
  end
end
