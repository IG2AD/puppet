node 'puppet.ig2ad.com' {
class { '::roles::base': }

file { 'puppet_repo_pull':
  ensure  => present,
  require => File[ [ '/scripts' ] ],
  path    => '/scripts/git_pull.sh',
  mode    => '0777',
  source  => 'puppet:///scripts/git_pull.sh'
  }

cron { 'pull_puppet_repo':
  ensure  => present,
  require => File[ [ '/scripts/git_pull.sh' ] ],
  command => '/scripts/git_pull.sh https://github.com/IG2AD/puppet.git
             /etc/puppet/environments > /dev/null',
  minute  => '*/5',
  }

}
