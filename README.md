# Puppet
This is my standard Puppet Setup. It adds the following;

## Installation
This configuration replaces the standard configuration which you get when you run;

`curl -fsS https://raw2.github.com/russmckendrick/puppet-install/master/install-el7 | bash`

## Common Module
Base setup for each server with;

* MOTD  
* Setup NTP with UK servers
* Installs some basic packages


## Modules installed

* [newrelic](https://github.com/fsalum/puppet-newrelic) - Regiseters the Server / Application with [NewRelic](http://newrelic.com).
* [motd](https://github.com/saz/puppet-motd) - Adds the MOTD defined in the Common Module.
* [salt](https://github.com/maxchk/puppet-salt) - Module to manage Salt Stack.
* [firewall](https://github.com/puppetlabs/puppetlabs-firewall) - IPTables management.
* [timezone](https://github.com/BashtonLtd/puppet-timezone) - Manages the timezone of the server
* [Docker](https://github.com/garethr/garethr-docker) - Manages [Docker](https://www.docker.com/) containers.
* [NGINX](https://github.com/jfryman/puppet-nginx) - Managers NGINX.
* [Fail2Ban](https://github.com/desalvo/puppet-fail2ban) - Installs and configures [Fail2Ban](http://www.fail2ban.org/).