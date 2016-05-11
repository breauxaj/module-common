# Class: common::params
#
# This class set parameters used in this module
#
# Actions:
#   - Defines numerous parameters used by other classes
#
class common::params {
  case $::osfamily {
    'debian': { }
    'redhat': {
      case $::lsbmajdistrelease {
        6: {
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
            'expect',
            'finger',
            'gcc',
            'htop',
            'ImageMagick',
            'nmap',
            'openssl',
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
        default: { }
      }
    }
    default: { }
  }

}
