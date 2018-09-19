class profile::web {

#  include apache
#  include apache::vhosts
#  include apache::mod::deflate
  include remi
#  include letsencrypt
  #hiera_include('classes')

  include apache
  include epel
  include letsencrypt
  
  class { 'cloudalbania::nonsslvhosts': } ->
  class { 'cloudalbania::letsencryptcerts': } ->                                 
  class { 'cloudalbania::sslvhosts': }

}

