#== Define: HTTPD Role
#
# Role to be used on web servers.
#
# === Parameters
#
# None
#
# === Examples
#
# To include these packages please add httpd role:
#
# class { '::roles::httpd': }
#
# === Authors
#
# aditaa <aditaa@ig2ad.com>
#
# === Copyright
#
# GPL ver. 2.
#
class roles::httpd {
  anchor { '::roles::httpd': }

  Class {
    require => Anchor['::roles::httpd'],
  }

  class { '::packages::httpd': }

}

