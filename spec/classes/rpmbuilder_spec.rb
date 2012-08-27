require 'spec_helper'

describe 'rpmbuilder', :type => 'class' do

  context "The minimum components that should be included" do

    it { should include_class("rpmbuilder::repos") }
    it { should include_class("rpmbuilder::packages::essential") }

  end

  context "Extra components that may be included" do

    let(:pre_condition) { 'class rpmbuilder::packages::extra {}' }
    let(:pre_condition) { 'class mock::puppetlabs_mocks {}' }
    it { should include_class("rpmbuilder::packages::extra") }
    it { should include_class("rpmbuilder::mock::puppetlabs_mocks") }
  end
end
