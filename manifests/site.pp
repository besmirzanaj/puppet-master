node default {
  class { motd: }
  class { cloudalbania: }
  class { 'resolv_conf':
    config_file => '/etc/resolv.conf',
    nameservers => ['1.1.1.1', '8.8.8.8.'],
    searchpath  => [ 'cloudalbania.com'],
  }

  class { 'ntp': }
}

node 'vps1.cloudalbania.com' {
  class {motd:}
  class {ntp:}
  class { 'resolv_conf':
    nameservers => ['1.1.1.1', '8.8.8.8.'],
    searchpath  => [ 'cloudalbania.com'],
  }
}

node 'vps2.cloudalbania.com' {
  class {motd:}
  class {ntp:}
  class { 'resolv_conf':
    nameservers => ['1.1.1.1', '8.8.8.8.'],
    searchpath  => [ 'cloudalbania.com'],
  }
}


