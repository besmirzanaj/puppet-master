node default {
  class { cloudalbania: }
  class { resolv_conf: }
  class { motd: }
  class { ntp: }
  case $facts['os']['name'] {
    'RedHat', 'CentOS':  { include mariadbrepo }
  }
}
