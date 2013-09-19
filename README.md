ngircd
======

ngIRCd is a free, portable and lightweight Internet Relay Chat server for small
or private networks.

Samples
-------
```
include ngircd
```
```
ngircd::service { 'default': ensure => running, enable => true }
```
Define the operators array
```
$operators = {
  o1 => { oper_name => 'john',
          oper_pass => 'pass123',
          oper_mask => '',
        },
  o2 => { oper_name => 'nancy',
          oper_pass => '123pass',
          oper_mask => '',
        },
}
```
Define the servers array
```
$servers = {
  s1 => { server_name => '',
          server_host => '',
          server_bind => '',
          server_port => '',
          server_mypassword => '',
          server_peerpassword => '',
          server_group => '',
          server_passive => '',
        }
}
```
Define the channels array
```
$channels = {
  c1 => { channel_name => '#sample',
          channel_topic => 'A Sample Channel',
          channel_modes => 'tnk',
          channel_key => 'pass123',
          channel_maxusers => '20',
        },
}
```