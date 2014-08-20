 #== Define: Base Role
 #
 # Role to be used on all servers.
 #
 # === Parameters
 #
 # None
 #
 # === Examples
 #
 # To include these packages please add base role:
 #
 # class { '::roles::base': }
 #
 # === Authors
 #
 # aditaa <aditaa@ig2ad.com>
 #
 # === Copyright
 #
 # GPL ver. 2.
 #
 class roles::base {
  anchor { '::roles::base': }

  Class {
    require => Anchor['::roles::base'],
  }

  file { "/scripts":
    ensure => "directory",
  }

  class { '::packages::base': }

}
