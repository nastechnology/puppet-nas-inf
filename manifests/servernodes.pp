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

# Veeam Backup Server
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

  # Veeam Backup Catalog Data Service
  service { 'Veeam Backup Catalog Data Service':
    ensure  => 'running',
    enable => true,
  }

  # Veeam Backup Proxy Service
  service { 'VeeamTransportSvc':
    ensure  => 'running',
    enable => true,
  }  

  # Veeam Backup Service
  service { 'Veeam Backup and Replication Service':
    ensure  => 'running',
    enable => true,
  }

  # Veeam Installer Service
  service { 'VeeamDeploymentService':
    ensure  => 'running',
    enable => true,
  }

  # Veeam vPower NFS Service
  service { 'VeeamNFSSvc':
    ensure  => 'running',
    enable => true,
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

# File Server
node 'nas-fs.nas.local' {
  include winfacts
  include nacs_management
  include nagios::target::windows

  @@nagios_service { "check_d_drive_space_${hostname}":
    use                 => "generic-service",
    host_name           => "$fqdn",
    check_command       => 'check_nt!USEDDISKSPACE!-l e -w 80 -c 90',
    service_description => "check_d_drive_space_${hostname}",
  }

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

# SDS Server
node 'nas-sds.nas.local' {
  include winfacts
  include nacs_management
  include nagios::target::windows

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
