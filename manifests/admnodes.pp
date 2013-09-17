node 'adm-cw.nasadm.local' inherits 'winbasenode' {
}

node 'adm-sb.nasadm.local' inherits 'winbasenode' {
}

node 'nhs-mtn-3.nasadm.local' inherits 'winbasenode' {
}

node 'adm-super.nasadm.local' inherits 'winbasenode' {
}

node 'nhs-adm-sec-1.nasadm.local' inherits 'winbasenode' {
}


node 'nhs-adm-jc.nasadm.local' inherits 'winbasenode' {
}

node 'nas-tc.nas.local' inherits 'macbasenode' {
  # Only make this resources available if on schools network
  if($network_en0 == '10.20.8.0') or
    ($network_en0 == '10.20.16.0') or
    ($netowrk_en0 == '10.20.24.0') or
    ($network_en0 == '10.20.32.0'){
    include nacs_management::install_printers::nhs_copier

    class { 'nacs_management::mapdrive::alldistrict' :
      user => 'markmyers',
    }

    class { 'nacs_management::mapdrive::admk' :
      user => 'markmyers',
    }

    class { 'nacs_management::user_homedir':
      user   => 'markmyers',
      server => 'adm-fs.nasadm.local',
    }

#  class { 'nacs_management::startup_app':
#    user => 'markmyers',
#    app  => 'Spark',
#  }

#  class { 'nacs_management::startup_app':
#    user => 'markmyers',
#    app  => 'Synergy',
#  }

  }
}

node 'nhs-adm-rw.nasadm.local' inherits 'macbasenode' {
  include nacs_management::install_printers::nhs_color
  include nacs_management::install_printers::nhs_copier
  include nacs_management::checkin

  class { 'nacs_management::user_homedir':
    user   => '1008127',
    server => 'adm-fs.nasadm.local',
  }

  class { 'nacs_management::mapdrive::alldistrict' :
    user => '1008127',
  }

  class { 'nacs_management::mapdrive::admk' :
    user => '1008127',
  }

  class { 'nacs_management::mapdrive::nhsshared':
    user => '1008127',
  }

  class { 'nacs_management::mapdrive::nmsshared':
    user     => '1008127',
    building => 'nhs',
  }
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
