class site::base::packages {
  $packages = ['git', 'vim-enhanced', 'ntp']
  package { $packages: ensure => latest }
}
class site::http::packages {
  $packages = ['httpd']
  package { $packages: ensure => latest }
}
