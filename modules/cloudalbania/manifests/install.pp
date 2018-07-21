class cloudalbania::install {

  $base_packages = [ 'tmux', 'strace', 'nmap', 'tcptraceroute', 'vim', 'nano', 'telnet' , 'htop', 'sysstat', 'dstat', ]
  package { $base_packages: 
    ensure => 'installed' 
  }

}
