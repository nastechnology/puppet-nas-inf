node winbasenode {
  include winfacts
  include setacl
  include nacs_management
  include nacs_management::techspecs
  include nacs_management::delprof
  include nacs_management::oaascreen

  if ($::puppetversion != '3.6.1'){
    class { 'puppetversion':
      version    => '3.6.1',
      start_time => '12:00',
    }
  }

#  scheduled_task { 'UpgradePuppet':
#    ensure    => present,
#    enabled   => false,
#    command   => 'C:\WINDOWS\system32\msiexec.exe',
#    arguments => '/qn /i C:\software\puppet-3.4.3.msi',
#    trigger => {
#      schedule    => monthly,
#      start_date  => '2014-02-25',
#      start_time  => '11:00',
#    },
#  }

  windows_eventlog { 'Application':
    log_path       => '%SystemRoot%\system32\config\AppEvent.Evt',
    log_size       => '524288',
    max_log_policy => 'overwrite',
  }

  windows_eventlog { 'Security':
    log_path       => '%SystemRoot%\system32\config\SecEvent.Evt',
    log_size       => '524288',
    max_log_policy => 'overwrite',
  }


  registry_key {'hkcr\.jnlp':
    ensure => present,
  }

  registry_value { 'hkcr\.pdf\\':
    type    => string,
    data    => 'AcroExch.document.11',
    require => Package['adobereader'],
  }

  registry_value { 'hkcr\.pdf\Content Type':
    type    => string,
    data    => 'application/pdf',
    require => Package['adobereader'],
  }

  registry_key { 'hkcr\.pdf\OpenWithList':
    ensure  => present,
    require => Package['adobereader'],
  }

  registry_key { 'hkcr\.pdf\OpenWithList\AcroRd32.exe':
    ensure  => present,
    require => Package['adobereader'],
  }

  registry_value { 'hkcr\.jnlp\\':
    type    => string,
    data    => 'JNLPFile',
    require => Package['javaruntime'],
  }

  registry_value {'hkcr\.jnlp\Content Type':
    type    => string,
    data    => 'application/x-java-jnlp-file',
    require => Package['javaruntime'],
  }

  registry_key { 'hkcr\.jnlp\OpenWithList':
    ensure  => present,
  }

  registry_key { 'hkcr\.jnlp\OpenWithList\javaws.exe':
    ensure => present,
  }

  package { 'k-litecodecpackbasic':
    ensure => installed,
  }

  package { 'cipaauthclient':
    ensure          => '1.2.2.1',
    install_options => '-force',
  }

  package { 'adobereader':
    ensure  => installed,
    require => Package['PDFCreator'],
  }

  package { 'firefox':
    ensure   => installed,
  }

  package { 'javaruntime':
    ensure  => '7.0.60',
    require => Package['firefox'],
  }

  package { 'googlechrome':
    ensure  => installed,
    require => Package['javaruntime'],
  }

  package { 'flashplayeractivex':
    ensure  => latest,
    require => Package['googlechrome'],
  }

  package { 'flashplayerplugin':
    ensure  => latest,
    require => Package['firefox'],
  }

  package { 'vlc':
    ensure  => installed,
    require => Package['flashplayerplugin'],
  }

  package { 'putty':
    ensure  => installed,
    require => Package['vlc'],
  }

  package { 'winscp':
    ensure  => installed,
    require => Package['putty'],
  }

  package { 'Silverlight':
    ensure  => '5.1',
    require => Package['winscp'],
  }

  package { 'PDFCreator':
    ensure  => installed,
    require => Package['Silverlight'],
  }

  package { 'Quicktime':
    ensure => installed,
  }

  service { 'wuauserv':
    ensure => 'stopped',
    enable => false,
  }
}
