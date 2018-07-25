class cloudalbania::packages (
  $packages = [],
  $package_ensure = present,
) {

  package { $packages:
    ensure => $package_ensure,
  }

}

