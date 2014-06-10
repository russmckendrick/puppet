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
      'vim-enhanced',
      'git',
      'jwhois',
    ]:
    ensure => installed,
  }

}
