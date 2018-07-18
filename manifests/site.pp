node default {
  class {motd:}
  notify { 'enduser-before': }
  notify { 'enduser-after': }

  class { 'ntp':
    require => Notify['enduser-before'],
    before  => Notify['enduser-after'],
  }
}

node 'vps1.cloudalbania.com' {
  class {motd:}
  class {ntp:}
}

node 'vps2.cloudalbania.com' {
  class {motd:}
  class {ntp:}
}


