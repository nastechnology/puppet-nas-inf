node 'tech-choco-test.nas.local' inherits 'winbasenode' {
  include nacs_management
  include nacs_management::techspecs
  include nacs_management::elementaryfonts
#  include nacs_management::examview
#  include nacs_management::examview::historyto1877
  include nacs_management::screen::1024x768
  include nacs_management::atrts

  package { 'virtualbusiness.retail' :
    ensure => installed,
  }

  package { 'virtualbusiness.sports' :
    ensure => installed,
  }

  package { 'precalctestgen':
    ensure => installed,
  }

  package { 'PhotoStory':
    ensure => installed,
  }

  #package { 'Quicktime':
  #  ensure => installed,
  #}

  package { 'TIResources':
    ensure => installed,
  }

  package { 'IPEVO':
    ensure => installed,
  }

  package { 'SirsiWorkflows':
    ensure  => installed,
  }

  package { 'office2007nooutlook':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  exec { 'addFontsToRegistry':
    command => 'C:\\WINDOWS\\regedit.exe /s C:\\NACSManage\\fonts.reg',
#    require => Exec['ChangeFontREGPerms'],
  }

#  class { 'nacs_management::defaultprinter':
#    server => 'nas-printserver',
#    printer=> 'nhs_copier',
#  }

  exec { 'setDefaultPrinter':
    command => 'C:\\WINDOWS\\regedit.exe /s C:\\NACSManage\\defaultprint.reg'
  }
}

node 'nas-dsign.nas.local' {
  include sudo
  package { 'sshd': ensure => present }
}

node 'nas-sped-trn-13.nasadm.local' inherits 'winbasenode' {
}

node 'nas-nurse.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001015': }
  nacs_management::printers { 'nhs_copier': }
  nacs_management::printers { 'ces_office_copier': }
  nacs_management::printers { 'nms_office_copier': }
  nacs_management::printers { 'wes_office': }
  nacs_management::printers { 'cdb_wkrm_copier': }
}

node 'nas-test-0.nas.local' {
  registry_key {'hkcr\.jnlp':
    ensure => present,
  }

  registry_value { 'hkcr\.jnlp\\':
    type => string,
    data => 'JNLPFile',
  }

  registry_value { 'hkcr\.jnlp\Content Type':
    type=>string,
    data=> 'application/x-java-jnlp-file',
  }

  package { 'javaruntime':
    ensure  => installed,
    provider=> 'chocolatey',
  }

  package { 'git':
    ensure  => installed,
    provider=> 'chocolatey',
  }

  package { 'python':
    ensure  => installed,
    provider=> 'chocolatey',
  }

  package { 'vlc':
    ensure  => installed,
    provider=> 'chocolatey',
  }

  package { 'filezilla':
    ensure  => installed,
    provider=> 'chocolatey',
  }
}



node 'ces-214-guid.nas.local' inherits 'winbasenode' {
}



node 'tech-dev-mini.local' {
  include nacs_management
  include nacs_management::techspecs
  #include munkiclient
  #include munkiclient::config
  #include nacs_management::maccheckmngsft

  class { 'nacs_management::allprinters': }   

  nacs_management::printers{'nhs_copier': }
  nacs_management::printers{ 'ces_office_copier': }
 
}

node 'nhs-ios-server.nas.local' inherits 'macbasenode' {

}


node 'ces-ios-server.nas.local' inherits 'macbasenode' {

}

node 'cdb-ios-server.nas.local' inherits 'macbasenode' {

}

node 'nms-ios-server.nas.local' inherits 'macbasenode' {

}

node 'wes-ios-server.nas.local' inherits 'macbasenode' {

}


node 'nas-tech-scan.nas.local' inherits 'winbasenode' {

}

node 'nas-nagios.nas.local' {
}


node 'cw-work-mac.nas.local' inherits 'macbasenode' {
}

node /^nas\-\w+\-\w+\-\d\.nas\.local/ inherits 'winbasenode' {
}


node 'nas-sped-trn-14.nas.local' inherits 'winbasenode' {
}
