class serf::config inherits serf{

  File {
    owner  => $::serf::config_owner,
    group  => $::serf::config_group,
    mode   => $::serf::config_file_mode,
    notify => Service[$::serf::service_name],
  }

  file {
    $::serf::config_dir:
      ensure => directory,
      mode   => $::serf::config_dir_mode;

    $::serf::config_file:
      ensure  => present,
      mode   => 755,
      content => template('serf/config.json.erb');
    'serf_init.d':
      path => '/etc/init.d/serf',
      content => template('serf/serf.init.erb'),
      mode   => 755,
      notify  => Service['serf'],
  }
}
