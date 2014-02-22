# Puppet
This is my standard Puppet Setup. It adds the following;

## Installation
This configuration replaces the standard configuration which you get when you run;

`curl -fsS https://raw2.github.com/russmckendrick/puppet-install/master/install | bash
`

## Common Module
Base setup for each server

* MOTD  
* Setup NTP with UK servers
* Installs some basic packages

## Modules installed

* [newrelic](https://github.com/fsalum/puppet-newrelic) - Regiseters the Server / Application with [NewRelic](http://newrelic.com)
* [motd](https://github.com/saz/puppet-motd) - Adds the MOTD defined in the Common Module
* [salt](https://github.com/maxchk/puppet-salt) - Module to manage Salt Stack
* [fail2ban](puppet module install desalvo/fail2ban) - Fail2Ban module
* [iptables]http://erwbgy.github.io/puppet-iptables/( - IPTables management)
* [timezone](https://github.com/BashtonLtd/puppet-timezone) - Manages the timezone of the server