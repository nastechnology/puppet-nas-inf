node 'puppet.nas.local' {
  class { 'puppetdb::master::config':
    puppetdb_server => 'pdb.nas.local',
    puppetdb_port   => 8081,
  }

  tidy { 'puppet::reports':
    path    => '/var/lib/puppet/reports',
    matches => '*',
    age     => '5d',
    backup  => false,
    recurse => true,
    rmdirs  => true,
    type    => 'ctime',
  }

  notify { 'debug: tidy command should run now': }

  file { '/etc/sudoers':
    owner   => 'root',
    group   => 'root',
    mode    => '0440',
  }

  package { 'apache2':
    ensure => installed,
  }

  package { 'libapache2-mod-php5':
    ensure => installed,
  }

  package { 'php5':
    ensure => installed,
  }

  package { 'php5-common':
    ensure => installed,
  }

  augeas { 'addnasadmintosudoers':
    context => '/files/etc/sudoers',
    changes => [
      'set spec[user = \'nasadmin\']/user nasadmin',
      'set spec[user = \'nasadmin\']/host_group/host ALL',
      'set spec[user = \'nasadmin\']/host_group/command ALL',
      'set spec[user = \'nasadmin\']/host_group/command/runas_user ALL',
    ],
  }
}

# PuppetDB File
node 'pdb.nas.local' {

  class { 'puppetdb::database::postgresql':
    listen_addresses => 'pdb.nas.local',
  }

  class { 'puppetdb::server':
    database_host  => 'pdb.nas.local',
    listen_address => 'pdb.nas.local',
  }
}

# Puppet Dashboard
node 'puppetdb.nas.local' {
  # Configure Apache on this server
  #class { 'apache': }
  #class { 'apache::mod::wsgi': }

  # Configure Puppetboard
  #class { 'puppetboard': }
}

# NAS API
node 'api.nas.local' {
}

node 'nas-web.nas.local' {
#  include roles::server
}

# Heidi Songs Website
node 'nas-hsongs.nas.local' {
}

node 'nmspcoip-1.nacs.local' {
  $screensaver = 'org.gnome.desktop.screensaver'
  $idle        = 'idle-activation-enabled'
  exec { 'disableScreenSaver':
    command => "/usr/bin/gsettings set ${screensaver} ${idle} false",
  }
}


node 'java.nas.local' {

  package { 'openjdk-7-jdk':
    ensure => installed
  }

  file { '/etc/sudoers':
    owner   => 'root',
    group   => 'root',
    mode    => '0440',
  }

  augeas { 'addnasadmintosudoers':
    context => '/files/etc/sudoers',
    changes => [
      'set spec[user = \'nasadmin\']/user nasadmin',
      'set spec[user = \'nasadmin\']/host_group/host ALL',
      'set spec[user = \'nasadmin\']/host_group/command ALL',
      'set spec[user = \'nasadmin\']/host_group/command/runas_user ALL',
    ],
  }

  class { 'apache':
    mpm_module => 'prefork',
  }

  class { 'apache::mod::php': }
  apache::mod { 'rewrite': }

  package { 'php5-mcrypt':
    ensure => installed,
  }
}

node 'munkiwa.nas.local' {
  package { 'build-essential':
    ensure => installed,
  }

  package { 'git':
    ensure => installed,
  }

  package { 'libapache2-mod-wsgi':
    ensure => installed,
  }

  package { 'libmysqlclient-dev':
    ensure => installed,
  }

  package { 'mysql-server':
    ensure => installed,
  }

  package { 'openssh-server':
    ensure => installed,
  }

  package { 'phpmyadmin':
    ensure => installed,
  }

  package { 'python-dev':
    ensure => installed,
  }

  package { 'python-setuptools':
    ensure => installed,
  }
}

node 'nas-appstore.nas.local' {
  include roles::server
}

node 'nas-cameras.nas.local' {
  include roles::server
}

node 'cog.nas.local' {
  include roles::server
}

node 'ftp.nas.local' {
  include roles::server
}

# MySQL Server
node 'mysql.nas.local' {
  exec {'mysqladmin':
    command => '/usr/bin/mysqladmin -ure_root -pT2Gt1wU flush-host',
  }
}

node 'ipadsignout.nas.local' {

  Vcsrepo { provider => git }

  package { 'openssh-server':
    ensure => installed,
  }

  class { 'apache':
    mpm_module    => 'prefork',
    default_vhost => false,
  }

  class { 'apache::mod::php': }
  apache::mod { 'rewrite': }

  package { 'php5-mysql':
    ensure => installed,
  }

  package { 'mysql-client':
    ensure => installed,
  }

  package { 'php5-mcrypt':
    ensure => installed,
  }

  apache::vhost { 'ipadsignout.nacswildcats.org':
    serveraliases => 'ipadsingout.napoleonareaschools.org',
    docroot       => '/var/ipadsignout/public',
    port          => '80',
    directories   => [ {
      path           => '/var/ipadsignout/public',
      allow_override => 'All'
    } ],
  }

  class { 'git::clone':
    repo   => 'ipadsignout',
    path   => '/var',
    before => Apache::Vhost['ipadsignout.nacswildcats.org'],
  }
}

node 'nasapp.nas.local' {

#  class { 'apache':
#    mpm_module => 'prefork'
#  }

#  class { 'apache::mod::php': }
#  apache::mod { 'rewrite': }

#  package { 'php5-mcrypt':
#    ensure => installed,
#  }

#  apache::vhost { 'bully.nacswildcats.org':
#    serveraliases => 'bully.napoleonareaschools.org',
#    docroot       => '/media/data2/web/www/bullyapp/public',
#    port          => '80',
#    directories   => [ {
#      path           => '/media/data2/web/www/bullyapp/public',
#      allow_override => 'All'
#    } ],
#  }

#  apache::vhost { 'apps.napoleonareaschools.org':
#    serveraliases   => 'apps.nacswildcats.org',
#    docroot         => '/media/data2/web/www/app',
#    port            => '80'
#  }
#  apache::vhost { 'pdforms.napoleonareaschools.org':
#    serveraliases => 'pdfforms.nacswildcats.org',
#    docroot       => '/media/data2/web/www/pdforms/public',
#    port          => '80',
#    directories   => [ {
#      path           => '/media/data2/web/www/pdforms/public',
#      allow_override => 'All',
#      allow          => 'from all'
#    } ],
#  }

#  apache::vhost { 'budrev':
#    docroot     => '/media/data2/web/www/budrev/public',
#    port        => '80',
#    directories => [ {
#      path           => '/media/data2/web/www/budrev/public',
#      allow_override => 'All',
#      allow          => 'from all'
#    } ],
#  }

#  apache::vhost { 'promweb':
#    docroot     => '/media/data2/web/www/promweb/public',
#    port        => '80',
#    directories => [ {
#      path           => '/media/data2/web/www/promweb/public',
#      allow_override => 'All',
#      allow          => 'from all'
#    } ],
#  }

#  apache::vhost { 'apiprom':
#    docroot     => '/media/data2/web/www/prom/public',
#    port        => '80',
#    directories => [ {
#      path           => '/media/data2/web/www/prom/public',
#      allow_override => 'All',
#      allow          => 'from all'
#    } ],
#  }

#  apache::vhost { 'training.napoleonareaschools.org':
#    serveraliases => 'training.nacswildcats.org',
#    docroot       => '/media/data2/web/www/training/public',
#    port          => '80',
#    directories   => [ {
#      path           => '/media/data2/web/www/training/public',
#      allow_override => 'All'
#    } ],
#  }

#  apache::vhost { 'caps.napoleonareaschools.org':
#    serveraliases => 'caps.nacswildcats.org',
#    docroot       => '/media/data2/web/www/caps/public',
#    port          => '80',
#    directories   => [ {
#      path           => '/media/data2/web/www/caps/public',
#      allow_override => 'All'
#    } ],
#  }

  class { 'git::clone':
    repo   => 'caps',
    path   => '/media/data2/web/www',
    before => Apache::Vhost['caps.napoleonareaschools.org'],
  }

  file { '/media/data2/web/www/caps/mvVideos.sh':
    ensure  => 'file',
    owner   => 'nas',
    group   => 'nas',
    mode    => '0755',
    require => Class['git::clone'],
  }

  #exec { '/media/data2/web/www/caps/mvVideos.sh':
  #  require => File['/media/data2/web/www/caps/mvVideos.sh'],
  #}
}

node 'nas-helpdesk.nas.local' {
  package { 'openssh-server':
    ensure => present,
  }

  host { 'helpdesk.napoleonareaschools.org':
    ip           => '10.20.15.71',
    host_aliases => 'helpdesk',
  }
}


node 'tech.nas.local' {

  package { 'openssh-server':
    ensure => present,
  }

  host { 'tech.napoleonareaschools.org':
    ip           => '10.20.15.74',
    host_aliases => 'tech'
  }
}

node 'staff.nas.local' {
  package { 'openssh-server':
    ensure => present
  }

  host { 'staff.napoleonareaschools.org':
    ip           => '10.20.15.73',
    host_aliases => 'staff'
  }

  host { 'nas-dc4.nas.local':
    ip => '10.20.15.26'
  }

  host { 'nas-dc5.nas.local':
    ip => '10.20.15.48'
  }

  host { 'nap-adm-dc.nasadm.local':
    ip => '10.20.15.25'
  }
}


# Construction Blog
node 'build.nas.local' {
  package { 'openssh-server':
    ensure => installed,
  }

  package { 'build-essential':
    ensure => installed,
  }

  package { 'curl':
    ensure  => installed,
    require => Package['build-essential'],
  }


}

# NACS Controller
node 'controller.nas.local' {

  package { 'git':
    ensure => installed,
  }

  package { 'apache2':
    ensure => installed,
  }

  package { 'php5':
    ensure  => installed,
    require => Package['apache2'],
  }

  package { 'php5-common':
    ensure  => installed,
    require => Package['apache2'],
  }

  package { 'libapache2-mod-php5':
    ensure  => installed,
    require => Package['php5-common'],
  }

}


node 'sensu.nas.local' {
  package { 'erlang-nox':
    ensure => installed,
  }

  package { 'redis-server':
    ensure => installed,
  }

  package { 'ruby-json':
    ensure => installed,
  }

  class { 'sensu':
    rabbitmq_password => 'T2Gt1wU',
    server            => true,
    dashboard         => false,
    api               => true,
    #plugins           => [
    #  'puppet:///data/sensu/plugins/ntp.rb',
    #  'puppet:///data/sensu/plugins/postfix.rb'
    #]
  }

}
