class cloudalbania::sslvhosts (
  $apache_ssl_vhosts = hiera('::apache::vhosts', {}),
) {
  include ::apache
  create_resources('apache::vhost', $apache_ssl_vhosts)
}
