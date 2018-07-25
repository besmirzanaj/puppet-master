node default {
#  class { 'base': }
  class { cloudalbania::packages: }
  class { 'resolv_conf':}
}

class base {
  class {motd:}
  class {ntp:}
  class { 'resolv_conf':
    nameservers => ['1.1.1.1', '8.8.8.8'],
    searchpath  => [ 'cloudalbania.com'],
  }
}

