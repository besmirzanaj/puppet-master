class cloudalbania::updates {

case $facts['os']['name'] {
  'RedHat', 'CentOS':  { 
    exec { 'yum_update':
      command => 'yum -y update',
      path    => '/usr/local/bin/:/bin/:/usr/bin/',
    }
  }
  /^(Debian|Ubuntu)$/: { 
    exec { 'apt_update':
      command => 'apt update && apt -y upgrade',
      path    => '/usr/local/bin/:/bin/:/usr/bin/:usr/local/sbin/:/usr/sbin/:/sbin/',
      }
  }
  default: { 
    exec { 'yum_update':
      command => 'yum -y update',
      path    => '/usr/local/bin/:/bin/:/usr/bin/',
      }
  }
}
}
