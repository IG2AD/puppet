class site::base::packages {
  $packages = ['git', 'vim-enhanced', 'ntp']
  package { $packages: ensure => latest }
}
