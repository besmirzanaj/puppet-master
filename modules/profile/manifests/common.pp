class profile::common {

  class { cloudalbania: }
  class { resolv_conf: }
  class { motd: }
  class { ntp: }

}
