class site::roles::base {
  anchor { '::site::roles::base': }

  Class {
    require => Anchor['::site::roles::base'],
  }

<<<<<<< HEAD
  file { "/scripts":
    ensure => "directory",
  }
=======
  class { '::site::base::packages': }
>>>>>>> 2cf1433... added some base packages for all servers #5

}
