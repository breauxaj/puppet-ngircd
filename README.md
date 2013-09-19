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
  o1 => { oper_name => 'TheOper',
          oper_pass => 'ThePwd',
          oper_mask => '*!ident@somewhere.example.com',
        },
}
```
Define the servers array
```
$servers = {
  s1 => { server_name => 'irc2.the.net',
          server_host => 'connect-to-host.the.net',
          server_bind => '10.0.0.1',
          server_port => '6667',
          server_mypassword => 'MySecret',
          server_peerpassword => 'PeerSecret',
          server_group => '123',
          server_passive => 'no',
        },
}
```
Define the channels array
```
$channels = {
  c1 => { channel_name => '#TheName',
          channel_topic => 'a great topic',
          channel_modes => 'tnk',
          channel_key => 'Secret',
          channel_maxusers => '23',
        },
}
```
```
ngircd::config { 'default':

}