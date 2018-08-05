class cloudalbania::repos (
  $remi = false,
  ) {

  if $facts['os']['name'] == 'CentOS' {
    package { 'epel-release':
      ensure => latest,
    }
  }

  if $remi == true {
  # the following case is not neccessary as the mirrorlist url is the same.
  # It serves as an example of applying some configs in two different OS releases
    case $operatingsystemmajrelease {
      /^6.*/: {
        yumrepo { 'remi-php72':
          enabled    => 1,
          descr      => 'Remi repository',
          mirrorlist => 'http://cdn.remirepo.net/enterprise/$releasever/php72/mirror',
          gpgcheck   => 1,
          gpgkey     => 'http://rpms.remirepo.net/RPM-GPG-KEY-remi',
          require    => Package['epel-release'],
        }
      }
      /^7.*/: {
        yumrepo { 'remi-php72':
          enabled    => 1,
          descr      => 'Remi repository',
          mirrorlist => 'http://cdn.remirepo.net/enterprise/$releasever/php72/mirror',
          gpgcheck   => 1,
          gpgkey     => 'http://rpms.remirepo.net/RPM-GPG-KEY-remi',
          require    => Package['epel-release'],
        }
      }
    }
  }
}
