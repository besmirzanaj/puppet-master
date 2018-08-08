class cloudalbania::packages (
  $packages = [],
  $package_ensure = latest,
) {

  if $facts['os']['name'] == 'CentOS' {
    package { $packages:
      ensure  => $package_ensure,
      require => Package[ 'epel-release' ],
    }  
  }

  if $facts['os']['name'] == 'CentOS' {
    package { 'epel-release':
      ensure => $package_ensure,
    }
  }
}

