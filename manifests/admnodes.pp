node 'adm-cw.nasadm.local' inherits 'winbasenode' {
}

node 'adm-wn-laptop.nasadm.local' inherits 'winbasenode' {
}

node 'adm-sb.nasadm.local' inherits 'winbasenode' {
}

node 'nhs-mtn-3.nasadm.local' inherits 'winbasenode' {
}

node 'adm-super.nasadm.local' inherits 'winbasenode' {
}

# Steve's Mac
node 'boe-mac-06185.nas.local' inherits 'staffmacnode' {
  nacs_management::map::idrive { '1003297':
    server => 'adm-fs.nasadm.local',
  }

  nacs_management::map::admk { '1003297KDrive':
    user => '1003297',
  }

  nacs_management::map::admj { '1003297JDrive':
    user => '1003297',
  }

  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'boe_copier': }
}

# Marks MacBook Pro
node 'nas-tech-tc.nas.local' inherits 'staffmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'boe_copier': }
}

node 'nhs-adm-sec-1.nasadm.local' inherits 'winbasenode' {
}

node 'nhs-adm-jc.nasadm.local' inherits 'winbasenode' {
}

node 'nms-adm-sec.nasadm.local' inherits 'winbasenode' {
  package { 'office2007outlook':
    ensure => installed,
  }
}

node 'nas-tc.nas.local' inherits 'macbasenode' {
  #include nacs_management::install_printers::nhs_copier

  #class { 'nacs_management::mapdrive::alldistrict' :
  #  user => 'markmyers',
  #}

  #class { 'nacs_management::mapdrive::admk' :
  #  user => 'markmyers',
  #}

  #class { 'nacs_management::user_homedir':
  #  user   => 'markmyers',
  #  server => 'adm-fs.nasadm.local',
  #}

  #if ($::network_en2 == '10.20.8.0') {
  #  exec { 'startup-app' :
  #    command => '/usr/bin/open /Applications/Synergy.app',
  #  }
  #}

}

node 'nhs-adm-rw.nas.local' inherits 'staffmacnode' {
  include nacs_management::checkin
  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'nhs_color': }
  nacs_management::printers { 'nhs_copier': }

  class { 'nacs_management::user_homedir':
    user   => '1008127',
    server => 'adm-fs.nasadm.local',
  }

  nacs_management::wireless { 'staff': }
}


node 'adm-emis.nas.local' inherits 'winbasenode' {
}

node 'adm-mb.nasadm.local' inherits 'winbasenode' {
}

node 'adm-js.nasadm.local' inherits 'winbasenode' {
}

node 'adm-mf.nasadm.local' inherits 'winbasenode' {
}

node 'cdb-adm-prin.nasadm.local' inherits 'winbasenode' {
  package { 'office2007nooutlook':
    ensure => installed,
  }
}

node 'cdb-adm-sec.nasadm.local' inherits 'winbasenode' {
}

node 'cdb-cust-0.nasadm.local' inherits 'winbasenode' {
}

node 'ces-adm-an.nasadm.local' inherits 'winbasenode' {
}

node 'ces-adm-sec.nasadm.local' inherits 'winbasenode' {
}

node 'nhs-cust-0.nasadm.local' inherits 'winbasenode' {
}

node 'nms-cust-0.nas.local' inherits 'winbasenode' {
}

node 'wes-adm-sec.nasadm.local' inherits 'winbasenode' {
}

node 'wes-adm-prin.nasadm.local' inherits 'winbasenode' {
}

node 'wes-cust-0.nasadm.local' inherits 'winbasenode' {
}

node 'wes-adm-ssec.nasadm.local' inherits 'winbasenode' {
}
