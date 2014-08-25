# == Class: scripts
#
# Full description of class scripts here.
#
# === Parameters
#
# [files]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more scripts to install as an array."
#
# === Variables
#
#   None
#
# === Examples
#
#  class { scripts:
#    files => [ 'git_pull.sh', 'update.sh' ]
#  }
#
# === Authors
#
# Author Name <aditaa@ig2ad.com>
#
# === Copyright
#
# Public Domain
#

#main class
class scripts ( $files = ['README', 'update.sh'] ){

  # make sure root dir is there
  file { '/scripts':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0777',
  }

  #add listed files
  file { $files :
  ensure => file,
  mode   => '0755',
  source => "puppet:///modules/scripts/${title}"
  }

}
