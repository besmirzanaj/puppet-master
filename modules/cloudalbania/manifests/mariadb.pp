class cloudalbania::mariadb (
  Boolean $mariadb
  ) {
if #mariadb {
  package {'MariaDB-server':
    ensure => installed,
    require => Yumrepo [ 'MariaDB' ]
  }
  service { 'mysql':
    ensure => running,
    enable => true,
    subscribe => File['/etc/my.cnf.d/server.cnf'],
  }
  file { '/etc/my.cnf.d/server.cnf':
    ensure => file,
    mode   => 644,
    source => 'puppet:///conf_files/cloudalbania/server.cnf',
  }
}
}
