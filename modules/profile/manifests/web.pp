class profile::web {

  include apache
  include apache::vhosts
  include apache::mod::deflate
  include remi

}

