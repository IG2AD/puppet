class packages::httpd {
  $packages = ['httpd']
  package { $packages: ensure => latest }
}
