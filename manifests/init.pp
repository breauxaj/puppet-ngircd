class ngircd {
  $required = $operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'ngircd',
  }

  package { $required: ensure => latest }

  group { 'ngircd':
    ensure => present,
    gid    => 194,
  }

  user { 'ngircd':
    ensure     => present,
    gid        => 194,
    home       => '/var/lib/ngircd',
    shell      => '/sbin/nologin',
    managehome => true,
    uid        => 194,
  }

}

define ngircd::service ( $ensure = running,
                         $enable = true ) {
  $service = $operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'ngircd',
  }

  service { $service:
    ensure => $ensure,
    enable => $enable,
  }

}
