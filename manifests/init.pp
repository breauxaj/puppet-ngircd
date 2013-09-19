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

define ngircd::config ( $global_name,
                        $global_info,
                        $global_password,
                        $global_admininfo1,
                        $global_admininfo2,
                        $global_adminemail,
                        $global_ports,
                        $global_listen,
                        $global_motdfile,
                        $global_motdphrase,
                        $global_serveruid,
                        $global_servergid,
                        $global_chrootdir,
                        $global_pidfile,
                        $global_pingtimeout,
                        $global_pongtimeout,
                        $global_connectretry,
                        $global_opercanusemode,
                        $global_operservermode,
                        $global_predefchannelsonly,
                        $global_nodns,
                        $global_connectipv6,
                        $global_connectipv4,       
                        $global_maxconnections,
                        $global_maxconnectionsip,
                        $global_maxjoins,
                        $global_maxnicklength,


) {

}