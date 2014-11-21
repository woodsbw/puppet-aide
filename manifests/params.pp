# aide::params sets the default values for parameters.
class aide::params {
  $package      = 'aide'
  $version      = latest
  $db_path      = '/var/lib/aide/aide.db.gz'
  $db_temp_path = '/var/lib/aide/aide.db.new'
  $autogen_conf = '/var/lib/aide/aide.conf.autogenerated'
  $cron_job    = '/etc/cron.daily/aide'
  $hour         = 0

  case $::osfamily {
    'Debian': {
      $aide_path = '/usr/bin/aide'
      $conf_path = '/etc/aide/aide.conf'
    }
    default: {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
  }
}