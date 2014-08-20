class roles::httpd {
  anchor { '::roles::httpd': }

  Class {
    require => Anchor['::roles::httpd'],
  }

  class { '::packages::httpd': }

}

