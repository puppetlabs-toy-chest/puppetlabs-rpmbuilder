define rpmbuilder::mock::pe_legacy_mockset ( $mock_root = "/etc/mock",) {

    rpmbuilder::mock::pe_legacy_mock { "pupent-${name}-el4-i386":
        pe_ver  => $name,
        release => '4',
        arch => 'i386',
        mock_root => $mock_root,
    }

    rpmbuilder::mock::pe_legacy_mock { "pupent-${name}-el4-x86_64":
        pe_ver  => $name,
        release => '4',
        arch => 'x86_64',
        mock_root => $mock_root,
    }
}
