class site::base::packages {
  $packages = ['git', 'vim', 'ntp']
  package { $packages: ensure => latest }
}
