class profile::common {
#  include mcollective

  class { cloudalbania: }
  class { resolv_conf: }
  class { motd: }
  class { ntp: }

#  case $facts['os']['name'] {
#  #    'RedHat', 'CentOS':  { include mariadbrepo }
#  #  }
#  }
#  ~  

#  lookup("extra_packages", Array[String], "unique").each |$package| {
#    package{$package:
#      ensure => present
#    }
#  }
}
