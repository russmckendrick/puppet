# Learn more about module testing here: http://docs.puppetlabs.com/guides/tests_smoke.html
#
class {'::salt':
  minion_master => 'salt-master.example.com',
}
