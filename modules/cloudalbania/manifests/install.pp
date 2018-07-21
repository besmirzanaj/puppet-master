class cloudalbania::install {

  $base_packages = [ 'tmux', 'strace', 'nmap', 'tcptraceroute', 'vim', 'nano', 'telnet' ]
  package { $base_packages: 
    ensure => 'installed' 
  }

}
