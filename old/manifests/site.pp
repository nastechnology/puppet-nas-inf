import 'macbasenode.pp'
import 'winbasenode.pp'
import 'studentmacnode.pp'
import 'admnodes.pp'
import 'linuxnodes.pp'
import 'nhsnodes.pp'
import 'nmsnodes.pp'
import 'cesnodes.pp'
import 'wesnodes.pp'
import 'cdbnodes.pp'
import 'servernodes.pp'
import 'dhcp.pp'
import 'libnodes.pp'
import 'nctv.pp'
import 'mactest.pp'
import 'nodes.pp'
import 'yrbknodes.pp'
import 'buslabnodes.pp'
import 'deca.pp'
import 'teachersmacnode.pp'
import 'staffmacnode.pp'
import 'nmscart3.pp'
import 'nmscart2.pp'
import 'nmscart1.pp'
import 'cescart1.pp'
import 'cescart2.pp'
import 'wescart1.pp'
import 'wescart2.pp'
import 'oplab.pp'

$puppetserver = 'puppet.nacswildcats.org'

if $operatingsystem == 'windows' {
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

File { backup => 'main' }

filebucket { 'main':
  path    => false,
}
