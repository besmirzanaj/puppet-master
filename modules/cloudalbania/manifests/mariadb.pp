class cloudalbania::mariadb (
  Boolean $mariadb_present = false
  ) {
  if $mariadb_present {
    package {'MariaDB-server':
      ensure  => installed,
      require => Class[mariadbrepo],
    }
    service { 'mysql':
      ensure => running,
      enable => true,
      require => Package[ 'MariaDB-server' ],
#      subscribe => File['/etc/my.cnf.d/server.cnf'],
    }
#    file { '/etc/my.cnf.d/server.cnf':
#      ensure => file,
#      mode   => '0644',
#      source => 'puppet:///modules/cloudalbania/server.cnf',
#    }
  }
}
