node 'nas-printserver.nas.local' {
  service { 'Spooler':
    ensure => 'running',
    enable => true
  }
}

# MySQL Server
node 'nas-mysql.nas.local' {
  exec {'mysqladmin':
    command => '/usr/bin/mysqladmin -u re_root -pT2Gt1wU flush-host',
  }
}
