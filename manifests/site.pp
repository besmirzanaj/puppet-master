node default {
  class { 'base': }
  #class { 'cloudalbania': }
}

class base {
  class {motd:}
  class {ntp:}
  class { 'cloudalbania': }
  class { 'resolv_conf':
    nameservers => ['1.1.1.1', '8.8.8.8.'],
    searchpath  => [ 'cloudalbania.com'],
  }
}

