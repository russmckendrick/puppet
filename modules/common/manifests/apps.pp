class common::apps {

  # some useful apps not requiring additional configuration
  package{
    [
      'dstat',
      'lsof',
      'mailx',
      'man',
      'rsync',
      'tree',
      'htop',
      'vim-enhanced',
      'git',
    ]:
    ensure => installed,
  }

}
