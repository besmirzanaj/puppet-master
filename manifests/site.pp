node default {
  class { cloudalbania::packages: }
  class { resolv_conf: }
  class { motd: }
  class { ntp: }

}
