class cloudalbania::packages (
  $packages = [],
  $package_ensure = latest,
) {

  package { $packages:
    ensure => $package_ensure,
  }

  if $facts['os']['name'] == 'CentOS' {
    package { 'epel-release':
      ensure => $package_ensure,
    }
  }
}

