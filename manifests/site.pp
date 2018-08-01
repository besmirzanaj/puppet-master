node default {
  class { cloudalbania::packages: }
  #class { cloudalbania::updates: }
  class { resolv_conf: }
  class { motd: }
  class { ntp: }

}
