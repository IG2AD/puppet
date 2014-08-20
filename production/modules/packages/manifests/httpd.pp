# == Define: Httpd Packages
#
# Packages to be installed on all web servers.
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
class packages::httpd {
  $packages = ['httpd']
  package { $packages: ensure => latest }
}
