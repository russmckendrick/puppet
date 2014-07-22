class cloudwatchlogs {

file { '/root/test.conf':
ensure	=> file,
content	=> template('cloudwatchlogs/etc-profile.erb'),
owner	=> root,
group	=> root,
mode	=> 0644,
}

}