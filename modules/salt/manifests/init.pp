class salt {

	require salt::params

# Install the package and make sure its running

	package { "salt-minion":
	ensure => present,
	require => Class['::common::repos'],
	}

# Put our own minion file in place

  file { 'minion':
    path    => "/etc/salt/minion",
    content => template('salt/minion.erb'),
    owner   => "root",
	group   => "root",
	mode    => 600,
	replace => true,
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

  file { 'master':
    path    => "/etc/salt/master",
    content => template('salt/master.erb'),
    owner   => "root",
	group   => "root",
	mode    => 600,
	replace => true,
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