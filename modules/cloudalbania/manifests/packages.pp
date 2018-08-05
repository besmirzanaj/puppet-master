class cloudalbania::packages (
  $packages = [],
  $package_ensure = latest,
) {

  package { $packages:
    ensure => $package_ensure,
  }

}

