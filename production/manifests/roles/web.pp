class site::roles::web {
  anchor { '::site::roles::web': }

  Class {
    require => Anchor['::site::roles::web'],
  }

  class { '::site::web::packages': }

}

