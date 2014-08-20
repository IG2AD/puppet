# == Define: Base Packages
#
# Packages to be installed on all servers.
#
# === Parameters
#
# None
#
# === Examples
#
# To include these packages please add base role:
#
# class { '::site::roles::base': }
#
# === Authors
#
# aditaa <aditaa@ig2ad.com>
#
# === Copyright
#
# GPL ver. 2.
#

class packages::base {
  $packages = ['git', 'vim-enhanced', 'ntp']
  package { $packages: ensure => latest }
}
