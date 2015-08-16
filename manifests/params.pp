# == Class: ladvd::params
#
class ladvd::params {
  case $::operatingsystem {
    /(Debian|Ubuntu)/ : {
      $ladvd_package_name = 'ladvd'
      $ladvd_service_name = 'ladvd'
      $ladvd_sysconfig    = '/etc/default/ladvd'
      $ladvd_options      = '-a'
    }
    default           : {
      fail("Module ladvd is not supported on ${::operatingsystem}")
    }
  }
}
# EOF
