class cloudalbania {
 
  include cloudalbania::files
  include cloudalbania::packages
  include cloudalbania::mariadb
  include cloudalbania::repos
  include cloudalbania::service
  include cloudalbania::updates

}
