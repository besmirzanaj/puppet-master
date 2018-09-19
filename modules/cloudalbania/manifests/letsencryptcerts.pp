class cloudalbania::letsencryptcerts (
  $letsencryptcerts = hiera('::letsencrypt::certonly', {}),
) {
  include ::letsencrypt
  create_resources('letsencrypt::certonly:', $letsencryptcerts)
}

