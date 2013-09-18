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

```
$servers {
  s1 => { server_name => }
}
```
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