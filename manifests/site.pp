node default {
  class { cloudalbania: }
  class { resolv_conf: }
  class { motd: }
  class { ntp: }

}
