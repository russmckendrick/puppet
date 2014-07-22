class cloudwatchlogs (

$cloudwatchlogs = [
{
path => '/var/log/messages',
},
{
path => '/var/log/secure',
},
]

) 

{

file { '/root/test.conf':
ensure	=> file,
content	=> template('puppet-cloudwatchlogs/etc-profile.erb'),
owner	=> root,
group	=> root,
mode	=> 0644,
}

}