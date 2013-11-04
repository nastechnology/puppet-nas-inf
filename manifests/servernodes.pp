node 'nas-printserver.nas.local' {
  service { 'Spooler':
    ensure => 'running',
    enable => true
  }
}

# MySQL Server
node 'nas-mysql.nas.local' {
  exec {'mysqladmin':
    command => '/usr/bin/mysqladmin -ure_root -pT2Gt1wU flush-host',
  }
}

node 'nas-vstore.nas.local' {
  include winfacts
  include nacs_management

    windows_eventlog { 'Application':
    log_path       => '%SystemRoot%\system32\winevt\Logs\Application.evtx',
    log_size       => '2097152',
    max_log_policy => 'overwrite',
  }

  windows_eventlog { 'Security':
    log_path       => '%SystemRoot%\system32\winevt\Logs\Security.evtx',
    log_size       => '2097152',
    max_log_policy => 'overwrite',
  }

}

node 'nas-exchange-2.nas.local' {
  include winfacts
  include nacs_management  

  windows_eventlog { 'Application':
    log_path       => '%SystemRoot%\system32\winevt\Logs\Application.evtx',
    log_size       => '2097152',
    max_log_policy => 'overwrite',
  }

  windows_eventlog { 'Security':
    log_path       => '%SystemRoot%\system32\winevt\Logs\Security.evtx',
    log_size       => '2097152',
    max_log_policy => 'overwrite',
  }

  # MS Exchange Information Store Service
  service { 'MSExchangeIS':
    ensure  => 'running',
    enable => true,
  }

  # MS Exchange Transport Service
  service { 'MSExchangeTransport':
    ensure  => 'running',
    enable => true,
  }
}


node 'nas-sds.nas.local' {
  include winfacts
  include nacs_management

  windows_eventlog { 'Application':
    log_path       => '%SystemRoot%\system32\config\AppEvent.Evt',
    log_size       => '2097152',
    max_log_policy => 'overwrite',
  }

  windows_eventlog { 'Security':
    log_path       => '%SystemRoot%\system32\config\SecEvent.Evt',
    log_size       => '2097152',
    max_log_policy => 'overwrite',
  }
}
