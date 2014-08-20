class packages::base {
  $packages = ['git', 'vim-enhanced', 'ntp']
  package { $packages: ensure => latest }
}
