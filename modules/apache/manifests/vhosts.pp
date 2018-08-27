class apache::vhosts (
#  $vhosts = {},
  $vhosts = hiera('apache::vhosts', {}),
) {
  
  include ::apache

  create_resources('apache::vhost', $vhosts)

  }


