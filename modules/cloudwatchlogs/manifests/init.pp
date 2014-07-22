class cloudwatchlogs {

$cloudwatchlogs = [
{
path => '/var/log/messages',
},
{
path => '/var/log/secure',
},
]

) 

file { '/root/test.conf':
ensure	=> file,
content	=> template('cloudwatchlogs/awslogs.erb'),
owner	=> root,
group	=> root,
mode	=> 0644,
}

}