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
