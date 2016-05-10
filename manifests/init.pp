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
  $ensure = 'latest'
) inherits ::common::params {
  package { $::common::params::common_package:
    ensure  => $ensure,
  }

}