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

  package { 'adobereader':
    ensure  => installed,
  }

  package { 'firefox':
    ensure   => installed,
  }

  package { 'javaruntime':
    ensure  => '7.0.60',
  }

  package { 'googlechrome':
    ensure  => installed,
  }

  package { 'flashplayeractivex':
    ensure  => latest,
  }

  package { 'flashplayerplugin':
    ensure  => latest,
  }

  package { 'vlc':
    ensure  => installed,
  }

  package { 'putty':
    ensure  => installed,
  }

  package { 'winscp':
    ensure  => installed,
  }

  package { 'Silverlight':
    ensure  => '5.1',
  }

  package { 'PDFCreator':
    ensure  => installed,
  }

  package { 'Quicktime':
    ensure => installed,
  }

  service { 'wuauserv':
    ensure => 'stopped',
    enable => false,
  }
}
