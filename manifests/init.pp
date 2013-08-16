class ngircd {
  $required = $operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'ngircd',
  }

  package { $required: ensure => latest }

  add_group { 'ngircd': gid => 194 }

  add_service { 'ngircd': gid => 194, groups => '', uid => 194 }

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
