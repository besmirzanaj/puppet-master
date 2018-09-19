class cloudalbania::nonsslvhosts (
  $apache_nonssl_vhosts = hiera('::apache::vhosts', {}),
) {
  include ::apache
  create_resources('apache::vhost', $apache_nonssl_vhosts)
}
