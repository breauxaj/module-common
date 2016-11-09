# Class: common::params
#
# This class set parameters used in this module
#
# Actions:
#   - Defines numerous parameters used by other classes
#
class common::params {
  $common_package_ensure = 'latest'

  case $::operatingsystem {
    'Amazon': {
      $common_packages = [
        'bash',
        'deltarpm',
        'expect',
        'finger',
        'gcc',
        'htop',
        'ImageMagick',
        'nmap',
        'openssl',
        'patch',
        'rrdtool',
        'screen',
        'strace',
        'subversion',
        'sysstat',
        'tcpdump',
        'telnet'
      ]
    }
    'CentOS', 'OracleLinux', 'RedHat', 'Scientific': {
      case $::operatingsystemmajrelease {
        '6': {
          $common_packages = [
            'bash',
            'ccze',
            'compat-libstdc++-296',
            'compat-libstdc++-33',
            'expect',
            'finger',
            'gcc',
            'htop',
            'ImageMagick',
            'mcrypt',
            'nmap',
            'openssl',
            'patch',
            'reptyr',
            'rrdtool',
            'screen',
            'strace',
            'subversion',
            'sysstat',
            'tcpdump',
            'telnet'
          ]
        }
        '7': {
          $common_packages = [
            'bash',
            'ccze',
            'deltarpm',
            'expect',
            'finger',
            'gcc',
            'htop',
            'ImageMagick',
            'nmap',
            'openssl',
            'patch',
            'reptyr',
            'rrdtool',
            'screen',
            'strace',
            'subversion',
            'sysstat',
            'tcpdump',
            'telnet'
          ]
        }
        default: {
          fail("The ${module_name} module is not supported on an ${::operatingsystem} ${::operatingsystemmajrelease} distribution.")
        }
      }
    }
    'Debian', 'Ubuntu': {
      case $::operatingsystemmajrelease {
        '8', '14': {
          $common_packages = [
            'bash',
            'ccze',
            'expect',
            'finger',
            'gcc',
            'htop',
            'imagemagick',
            'nmap',
            'openssl',
            'patch',
            'reptyr',
            'rrdtool',
            'screen',
            'strace',
            'subversion',
            'sysstat',
            'tcpdump',
            'telnet'
          ]
        }
        default: {
          fail("The ${module_name} module is not supported on an ${::operatingsystem} ${::operatingsystemmajrelease} distribution.")
        }
      }
    }
    default: {
      fail("The ${module_name} module is not supported on an ${::operatingsystem} based system.")
    }
  }
}