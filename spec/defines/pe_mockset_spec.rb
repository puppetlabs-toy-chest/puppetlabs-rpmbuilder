require 'spec_helper'

describe 'rpmbuilder::mock::pe_mockset', :type => 'define' do
  ["/etc/mock", "/opt/mock"].each do |param|
    describe "when #{param == "/etc/mock" ? "using default" : "specifying"} parameters" do
      let(:title) {"lance"}
      let(:params) do { :mock_root => param } end

      ["el5","el6"].each do |dist|
        ["i386","x86_64"].each do |arch|
          it { should contain_Rpmbuilder__Mock__Pe_mock("pupent-#{title}-#{dist}-#{arch}") }
        end
      end
    end
  end
end
