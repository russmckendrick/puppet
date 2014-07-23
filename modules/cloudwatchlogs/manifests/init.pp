class cloudwatchlogs {

# Set some defaults

	$cloudwatchlogs = [
		{
			name => 'Messages',
			path => '/var/log/messages',
		},
		{
			name => 'Secure',
			path => '/var/log/secure',
		},
	]


# Create the configuration file

	file { '/etc/cloudwatchlogs.conf':
		ensure	=> file,
		content	=> template('cloudwatchlogs/awslogs.erb'),
		owner	=> root,
		group	=> root,
		mode	=> 0644,
		notify  => Exec['cloudwatchlogs-wget'],
	}

# Download and install the agent

	exec { 'cloudwatchlogs-wget':
		command     => '/usr/bin/wget https://s3.amazonaws.com/aws-cloudwatch/downloads/awslogs-agent-setup-v1.0.py',
		onlyif      => '/usr/bin/test -a /etc/cloudwatchlogs.conf',
		cwd         => '/usr/local/src/',
		unless      => '/usr/bin/test -a /usr/local/src/awslogs-agent-setup-v1.0.py',
		notify      => Exec['cloudwatchlogs-install'],
	}

	exec { 'cloudwatchlogs-install':
		command     => '/usr/bin/python /usr/local/src/awslogs-agent-setup-v1.0.py -n -r us-east-1 -c /etc/cloudwatchlogs.conf',
		onlyif      => '/usr/bin/test -a /usr/local/src/awslogs-agent-setup-v1.0.py'
	}

}