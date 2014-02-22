class salt {

# Install the package and make sure its running

	package { "salt-minion":
	ensure => present,
	require => Class['::common::repos'],
	}

# Put our own minion file in place

	file { "/etc/salt/minion":
	owner   => "root",
	group   => "root",
	mode    => 600,
	replace => true,
	source  => "puppet:///modules/salt/minion",
	require => Package["salt-minion"],
    notify  => Service["salt-minion"]	
	}

# Start the service

	service { 'salt-minion':
	name      => 'salt-minion',
	require   => Package["salt-minion"],
	ensure    => running,
	enable    => true,
	}

}


class salt::master {

# Install the package and make sure its running

	package { "salt-master":
	ensure => present,
	require => Class['::common::repos'],
	}

# Put our own master file in place

	file { "/etc/salt/master":
	owner   => "root",
	group   => "root",
	mode    => 600,
	replace => true,
	source  => "puppet:///modules/salt/master",
	require => Package["salt-master"],
    notify  => Service["salt-master"]	
	}

# Start the service

	service { 'salt-master':
	name      => 'salt-master',
	require   => Package["salt-master"],
	ensure    => running,
	enable    => true,
	}

}