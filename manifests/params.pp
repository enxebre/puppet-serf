# == Class: serf::params
#
# This class exists to
# 1. Declutter the default value assignment for class parameters.
# 2. Manage internally used module variables in a central place.
#
# Therefore, many operating system dependent differences (names, paths, ...)
# are addressed in here.
#
#
# === Parameters
#
# This class does not provide any parameters.
#
#
# === Examples
#
# This class is not intended to be used directly.
#
#
class serf::params{
  $version          = '0.3.0'
  $protocol_version = undef
  $bind             = $::ipaddress
  $advertise        = $::ipaddress
  $config_dir       = '/etc/serf'
  $config_file      = "${config_dir}/serf.json"
  $log_dir          = '/var/log/serf'
  $encrypt          = ''
  $log_level        = 'info'
  $log_file         = "${log_dir}/serf.log"
  $node             = $::fqdn
  $protocol         = 2
  $tags             = []
  $rpc_addr         = "${bind}:7373"
  $install_path     = '/usr/local/bin/'
  $install_method   = 'url'
  $handler          = true
  $handler_home     = "{config_dir}/handlers"
  $package_name     = 'serf'
  $package_ensure   = 'present'
  $event_handler    = []
  $join             = [
    '127.0.0.1'
  ]

  $service_name = 'serf'
  $service_enable = true
  $service_ensure = true
  $service_restart = true
  $service_status = true
}
