# == Class: varnish::params
#

class varnish::params {

  # set Varnish conf location based on OS
  $conf_file_path = $::osfamily ? {
    'RedHat' => '/etc/sysconfig/varnish',
    default  => '/etc/default/varnish',
  }

  $version = $varnish::version ? {
    /4\..*/ => 4,
    default => $varnish::default_version,
  }
}
