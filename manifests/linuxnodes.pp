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

  #notify { "debug: tidy command should run now": }
 
  file { "/etc/sudoers":
    owner   => "root",
    group   => "root",
    mode    => "440",
  }

  augeas { "addnasadmintosudoers":
    context => "/files/etc/sudoers",
    changes => [
      "set spec[user = 'nasadmin']/user nasadmin",
      "set spec[user = 'nasadmin']/host_group/host ALL",
      "set spec[user = 'nasadmin']/host_group/command ALL",
      "set spec[user = 'nasadmin']/host_group/command/runas_user ALL",
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

  file { "/etc/sudoers":
    owner   => "root",
    group   => "root",
    mode    => "440",
  }

  augeas { "addnasadmintosudoers":
    context => "/files/etc/sudoers",
    changes => [
      "set spec[user = 'nasadmin']/user nasadmin",
      "set spec[user = 'nasadmin']/host_group/host ALL",
      "set spec[user = 'nasadmin']/host_group/command ALL",
      "set spec[user = 'nasadmin']/host_group/command/runas_user ALL",
    ],
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

node 'nasapp.nas.local' {

  class { 'apache':
    mpm_module => 'prefork'
  }

  class { 'apache::mod::php': }
  apache::mod { 'rewrite': }

  apache::vhost { 'apps.napoleonareaschools.org':
    docroot => '/media/data2/web/www/app',
    port    => '80'
  }
  apache::vhost { 'pdforms.napoleonareaschools.org':
    docroot     => '/media/data2/web/www/pdforms/public',
    port        => '80',
    directories => [ {
      path           => '/media/data2/web/www/pdforms/public',
      allow_override => 'All',
      allow          => 'from all'
    } ],
  }

  apache::vhost { 'budrev':
    docroot     => '/media/data2/web/www/budrev/public',
    port        => '80',
    directories => [ {
      path           => '/media/data2/web/www/budrev/public',
      allow_override => 'All',
      allow          => 'from all'
    } ],
  }

  apache::vhost { 'promweb':
    docroot     => '/media/data2/web/www/promweb/public',
    port        => '80',
    directories => [ {
      path           => '/media/data2/web/www/promweb/public',
      allow_override => 'All',
      allow          => 'from all'
    } ],
  }

  apache::vhost { 'apiprom':
    docroot     => '/media/data2/web/www/prom/public',
    port        => '80',
    directories => [ {
      path           => '/media/data2/web/www/prom/public',
      allow_override => 'All',
      allow          => 'from all'
    } ],
  }

  apache::vhost { 'training.napoleonareaschools.org':
    docroot     => '/media/data2/web/www/training/public',
    port        => '80',
    directories => [ {
      path           => '/media/data2/web/www/training/public',
      allow_override => 'All'
    } ],
  }

  apache::vhost { 'caps.napoleonareaschools.org':
    docroot     => '/media/data2/web/www/caps/public',
    port        => '80',
    directories => [ {
      path           => '/media/data2/web/www/caps/public',
      allow_override => 'All'
    } ],
  }

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
node 'const.nas.local' {
  class { 'apache':
    mpm_module => 'prefork'
  }

  class { 'apache::mod::php': }
  apache::mod { 'rewrite': }

  package { 'mysql-server':
    ensure => installed,
  }

  package { 'php5-mysql':
    ensure => installed,
  }

  class { 'wordpress': 
    install_dir => '/var/www',
  }
}
