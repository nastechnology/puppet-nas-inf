

if $::operatingsystem == 'windows' {
  $sid = 'NACS'
  $serverpath = '\\nasapp\ChocoPack'
  Exec { path => [ 'C:/', 'C:/Windows/System32/', 'C:/Windows/', 'C:/Chocolatey/bin', 'C:/NACSManage', 'C:/Windows/System32/WindowsPowerShell/v1.0' ] }
  Package { provider => chocolatey }

  if($::puppetversion == '3.4.3'){
    File { source_permissions => ignore }
  }

  file { 'C:\Chocolatey\\chocolateyinstall\\chocolatey.config':
    ensure => file,
    source => 'puppet:///modules/nacs_management/chocolatey.config',
  }

  windows_env { 'PATH=C:\Chocolatey\bin': }
  windows_env { 'PATH=C:\NACSManage': }
  windows_env { 'ChocolateyInstall':
    value     => 'C:\Chocolatey',
    mergemode => clobber,
  }

} else {
  Exec { path => [ '/usr/bin', '/usr/local/bin'] }
}
