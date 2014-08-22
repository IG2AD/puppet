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
class scripts ( $files = ['README'] ){

  # make sure root dir is there
  file { '/scripts':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0777',
  }

  #define fuction to add all scripts listed
  define add {
    file { "/scripts/${title}":
      ensure => file,
      mode   => '0755',
      source => "puppet:///modules/scripts/${title}"
    }
  }

  #add listed files
  #if empty($files) == 'false' {
    add $files
  #}

}
