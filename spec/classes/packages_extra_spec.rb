require 'spec_helper'

describe 'rpmbuilder::packages::extra', :type => 'class' do

  context "Packages which should be installed" do

    packages = [
      'git',
      'mlocate',
      'nfs-utils',
      's3cmd',
    ]

    packages.each do|pkg|
      it { should contain_package("#{pkg}").with_ensure('latest').with_require('Class[Rpmbuilder::Repos]') }
    end
  end
end
