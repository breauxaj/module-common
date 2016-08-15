# Class: common
#
# This class installs certain common packages
#
# Parameters:
#
#  ensure: (default latest)
#    Determine the state of the packages
#
# Actions:
#   - Installs the list of packages
#
# Sample Usage:
#
#  For a standard installation, use:
#
#    class { 'common':
#      ensure => 'latest'
#    }
#
#  To remove the installation, use:
#
#    class { 'common':
#      ensure => 'absent'
#    }
#
class common (
  $ensure = $::common::params::common_package_ensure
) inherits ::common::params {
  package { $::common::params::common_packages:
    ensure  => $ensure,
  }

  $crons = hiera_hash('crons',{})
  create_resources('cron',$crons)

  $files = hiera_hash('files',{})
  create_resources('file',$files)

  $groups = hiera_hash('groups',{})
  create_resources('group',$groups)

  $hosts = hiera_hash('hosts',{})
  create_resources('host',$hosts)

  $keys = hiera_hash('ssh_authorized_keys',{})
  create_resources('ssh_authorized_key',$keys)

  $users = hiera_hash('users',{})
  create_resources('user',$users)

}
