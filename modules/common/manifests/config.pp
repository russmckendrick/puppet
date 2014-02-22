class common::config {

# Enable NTP & set UK servers

	class { '::ntp':
	servers => [ '0.uk.pool.ntp.org', '1.uk.pool.ntp.org', '2.uk.pool.ntp.org' ],
	}

# Set MOTD

	class { 'motd': }

}