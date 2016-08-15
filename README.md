common
======

The absolute base tasks that need to be applied to all hosts. Anything specific
should live in it's own module. This modules enforces the presence of some
packages.

Samples
-------
```
include common
```
```
class { 'common':
  ensure => 'latest'
}
```

Hiera
-----
```
crons:
  do-something:
    command: '/usr/local/sbin/somescript.sh  > /dev/null 2>&1'
    user:    'root'
    minute:  '0'
    hour:    '0'
```
```
files:
  '/etc/myfolder':
    ensure: directory
    owner:  'root'
    group:  'root'
    mode:   '0700'
```
```
groups:
  somegroup:
    ensure: present
    gid:    1000
```
```
hosts:
  "%{::fqdn}":
    ip:           "%{::ipaddress}"
    host_aliases: "%{::hostname}"
```
```
ssh_authorized_keys:
  'nouser@somehost':
    user: 'nouser'
    type: 'ssh-rsa'
    key:  'ImNotARealSSHKey'
```
```
users:
  auser:
    ensure:     present
    comment:    'A User'
    gid:        1000
    groups:     'auser'
    home:       '/home/auser'
    password:   'notarealpassword'
    shell:      '/bin/bash'
    managehome: true
    uid:        1000
```

License
-------
GPL3

Contact
-------
breauxaj AT gmail DOT com