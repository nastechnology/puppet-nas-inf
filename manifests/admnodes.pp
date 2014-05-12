node 'adm-cw.nasadm.local' inherits 'winbasenode' {
}

node 'adm-wn-laptop.nasadm.local' inherits 'winbasenode' {
}

node 'adm-sb.nasadm.local' inherits 'winbasenode' {
}

node 'nhs-mtn-3.nasadm.local' inherits 'winbasenode' {
}

node 'bus-supe.nasadm.local' inherits 'winbasenode' {
}

# Parcc lab @ nhs
node 'adm-super.nasadm.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }
}

# Steve's Mac
node 'boe-mac-06185.nas.local' inherits 'staffmacnode' {
  nacs_management::map::idrive { '1003297':
    server => 'adm-fs.nasadm.local',
  }

  nacs_management::map::admk { '1003297': }

  nacs_management::map::admj { '1003297': }

  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'boe_copier': }

  #nacs_management::tmutil { '1003297': }
  exec { 'DisableTmutil':
    command => "/usr/bin/tmutil disable",
  }
}

# Marks MacBook Pro
node 'nas-tech-tc.nas.local' inherits 'staffmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'boe_copier': }
  nacs_management::printers { 'ces_wkrm': }
  nacs_management::printers { 'ces_upstairs_wkrm': }

#  nacs_management::printers { 'nhs_wkrm_copier': }
  nacs_management::printers { 'nhs_wkrm_copier_2': }
  nacs_management::printers { 'hs_stafflounge': }

  include nacs_management::checkin

  printer { "NHS_WKRM_COPIER1":
        ensure      => present,
        uri         => "ipp://10.20.2.9/printers/NHS_WKRM_COPIER1",
        description => "NHS WKRM Copier1",
        location    => "NHS 231",
        shared      => false,
      }
}

# Chris MacBook Professional
node 'nas-tech-st.nas.local' inherits 'staffmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'boe_copier': }

  nacs_management::printers { 'wes_wkrm_copier': }

  nacs_management::printers { 'nhs_wkrm_copier': }
  nacs_management::printers { 'nhs_wkrm_copier_2': }

  nacs_management::printers { 'nms_office_copier': }

  nacs_management::printers { 'ces_office_copier': }
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
  package { 'filezilla':
    ensure => installed,
  }
}

node 'adm-mb.nasadm.local' inherits 'winbasenode' {
}

node 'adm-js.nasadm.local' inherits 'winbasenode' {
}

node 'adm-mf.nasadm.local' inherits 'winbasenode' {
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


node 'wes-cust-0.nasadm.local' inherits 'winbasenode' {
}

node 'wes-adm-ssec.nasadm.local' inherits 'winbasenode' {
}
