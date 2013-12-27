import 'macbasenode.pp'
import 'winbasenode.pp'
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
$puppetserver = 'puppet.nacswildcats.org'

if $operatingsystem == 'windows' {
  $sid = 'NACS'
  $serverpath = '\\nasapp\ChocoPack'
  Exec { path => [ 'C:/', 'C:/Windows/System32/', 'C:/Windows/', 'C:/Chocolatey/bin', 'C:/NACSManage' ] }
  Package { provider => chocolatey }
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
  server  => 'puppet.nas.local',
  path    => false,
}
