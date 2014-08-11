class site::roles::base {
  anchor { '::site::roles::base': }

  Class {
    require => Anchor['::site::roles::base'],
  }

  file { "/scripts":
    ensure => "directory",
  }

}
