node default {
  class { 'base': }
  class { 'cloudalbania': }
}

node 'vps1.cloudalbania.com' {
  class { 'base': }
}

class base {
  class {motd:}
  class {ntp:}
  class { 'resolv_conf':
    nameservers => ['1.1.1.1', '8.8.8.8.'],
    searchpath  => [ 'cloudalbania.com'],
  }
}

