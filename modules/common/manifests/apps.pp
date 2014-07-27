class common::apps {

  package{
    [
      'dstat',
      'lsof',
      'mailx',
      'rsync',
      'tree',
      'vim-enhanced',
      'git',
      'whois',
      'iptables-services',
    ]:
    ensure => installed,
  }

}
