class apache::vhosts (
#  $vhosts = {},
  $vhosts = hiera('apache::vhost', {}),
) {
  
  include ::apache

  create_resources('apache::vhost', $vhosts)

  }


