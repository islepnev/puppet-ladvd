# == Class: ladvd
#
class ladvd (
  $package       = true,
  $service       = true,
  $enable        = true,
  $ladvd_options = '-a') inherits ladvd::params {
  $ladvd_package_name = $ladvd::params::ladvd_package_name
  $ladvd_service_name = $ladvd::params::ladvd_service_name
  $ladvd_sysconfig    = $ladvd::params::ladvd_sysconfig

  case $package {
    true    : { $ensure_package = 'present' }
    false   : { $ensure_package = 'purged' }
    latest  : { $ensure_package = 'latest' }
    default : { fail('package must be true, false or lastest') }
  }

  case $service {
    true    : { $ensure_service = 'running' }
    false   : { $ensure_service = 'stopped' }
    default : { fail('service must be true or false') }
  }

  if ($lsbmajdistrelease >= 7) {
    package { $ladvd_package_name: ensure => $ensure_package, }

    if ($package == true) or ($package == latest) {
      service { $ladvd_service_name:
        ensure     => $ensure_service,
        enable     => $enable,
        hasrestart => true,
        hasstatus  => false,
        require    => Package[$ladvd_package_name],
      }

      file { $ladvd_sysconfig:
        ensure  => present,
        path    => $ladvd_sysconfig,
        mode    => '0644',
        content => template("ladvd/sysconfig.${::operatingsystem}.erb"),
        require => Package[$ladvd_package_name],
        notify  => Service[$ladvd_service_name],
      }
    }
  } else {
    notice("Module ladvd is not supported on ${::lsbdistcodename}")
  }
}
# EOF
