# All C.D. Brillhart Machines that have a digit after building name
# this excludes any lab's or special computer names i.e. gym, mus
node /^cdb\-\d+\-\d+/ inherits 'winbasenode' {
}

node 'cdb-118-spe.nas.local' inherits 'winbasenode' {

}

node 'cdb-m128-0.nas.local' inherits 'winbasenode' {
}

# Dana Ward's mac
# backup user created
node 'cdb-mac-06172.nas.local' inherits 'staffmacnode' {
  class { 'nacs_management::allprinters': }
  exec { 'DanaWard':
    command => "/bin/echo 'UsersName=DanaWard' >> /opt/NACSManage/facts.txt",
  }

  nacs_management::map::idrive { '1011438':
    server => 'adm-fs.nasadm.local',
  }

  nacs_management::map::admk { '1011438': }
  nacs_management::map::alldistrict { '1011438': }

  nacs_management::printers{ 'cdb_wkrm_copier': }
  nacs_management::printers{ 'cdb_108_copier': }

  nacs_management::tmutil { '1011438': }

  nacs_management::map::cdbshared { '1011438': }
  nacs_management::map::alldistrict { '1011438': }
}


# Jodi Myers' mac
# backup user created
node 'cdb-mac-06190.nas.local' {
  $user = '1010346'

  class { 'roles::teacher::cdb::ceskg':
    user => "${user}",
  }

}

# Jen Croninger mac
# backup user created
node 'cdb-mac-06191.nas.local' {
  $user = '1002534'

  class { 'roles::teacher::cdb':
    user => "${user}",
  }

}


#
# Please put Macs that come out of after early access
#


# Pam Downey Mac
# backup user created
node 'cdb-mac-06099.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002849': }
  nacs_management::printers{ 'cdb_wkrm_copier': }
  nacs_management::printers{ 'cdb_wkrm_colorlaser': }

  nacs_management::map::cdbshared { '1002849': }
  nacs_management::map::alldistrict { '1002849': }
}

# Sue Abshire Mac
# backup user created
node 'cdb-mac-06228.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001001': }
  nacs_management::printers{ 'cdb_wkrm_copier': }
  nacs_management::printers{ 'cdb_wkrm_colorlaser': }
  nacs_management::printers{ 'cdb_108': }
  nacs_management::printers{ 'cdb_108_copier': }

  nacs_management::map::cdbshared { '1001001': }
  nacs_management::map::alldistrict { '1001001': }
}

# Tiffany Biderstedt Mac
# backup user created
node 'cdb-mac-06098.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001582': }
  nacs_management::printers{ 'cdb_wkrm_copier': }
  nacs_management::printers{ 'cdb_wkrm_colorlaser': }
  nacs_management::printers{ 'cdb_108': }
  nacs_management::printers{ 'cdb_108_copier': }

  nacs_management::map::cdbshared { '1001582': }
  nacs_management::map::alldistrict { '1001582': }
}

# Amber Billow Mac
# backup user created
node 'cdb-mac-06097.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1009855': }
  nacs_management::printers{ 'ces_kg_colorlaser': }
  nacs_management::printers{ 'nms_ces_ricoh_7500': }

  nacs_management::map::cdbshared { '1009855': }
  nacs_management::map::alldistrict { '1009855': }
}

# Laurie Gilson Mac
# backup user created
node 'cdb-mac-06195.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1003591': }
  nacs_management::printers{ 'cdb_wkrm_copier': }
  nacs_management::printers{ 'cdb_wkrm_colorlaser': }

  nacs_management::map::cdbshared { '1003591': }
  nacs_management::map::alldistrict { '1003591': }
}

# Kelli Good Mac
# backup user created
node 'cdb-mac-06194.nas.local' {
  $user = '1003675'

  class { 'roles::teacher::cdb':
    user => "${user}",
  }
}

# Jennifer Burkhart Mac
# backup user created
node 'cdb-mac-06096.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002128': }
  nacs_management::printers{ 'cdb_wkrm_copier': }
  nacs_management::printers{ 'cdb_wkrm_colorlaser': }

  nacs_management::map::cdbshared { '1002128': }
  nacs_management::map::alldistrict { '1002128': }
}

# Denine Cramer Mac
# backup user created
node 'cdb-mac-06095.nas.local' {
  $user = '1002471'

  class { 'roles::teacher::cdb':
    user => "${user}",
  }
}

# Bev Junge Mac
# backup user created
node 'cdb-mac-06193.nas.local' {
  $user = '1004501'

  class { 'roles::teacher::cdb':
    user => "${user}",
  }
}

# Jen Kin Mac
# backup user created
node 'cdb-mac-06192.nas.local' {
  $user = '1004627'

  class { 'roles::teacher::cdb':
    user => "${user}",
  }

}

# Justin Marrowquin Mac
# backup user created
node 'cdb-mac-06208.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005187': }
  nacs_management::printers{ 'cdb_wkrm_copier': }
  nacs_management::printers{ 'cdb_wkrm_colorlaser': }
  nacs_management::printers{ 'cdb_mod': }

  nacs_management::map::cdbshared { '1005187': }
  nacs_management::map::alldistrict { '1005187': }
}

# Linda Martinez Mac
# backup user created
node 'cdb-mac-06232.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005215': }
  nacs_management::printers{ 'cdb_wkrm_copier': }
  nacs_management::printers{ 'cdb_wkrm_colorlaser': }
  nacs_management::printers{ 'cdb_108': }
  nacs_management::printers{ 'cdb_108_copier': }

  nacs_management::map::cdbshared { '1005215': }
  nacs_management::map::alldistrict { '1005215': }

}

# Vaune Ritchey Mac
node 'cdb-mac-06227.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1006412': }
  nacs_management::printers{ 'cdb_wkrm_copier': }
  nacs_management::printers{ 'cdb_wkrm_colorlaser': }
  nacs_management::printers{ 'cdb_mod': }

  nacs_management::map::cdbshared { '1006412': }
  nacs_management::map::alldistrict { '1006412': }

}


# Kylie Speiser Mac
# backup user created
node 'cdb-mac-06209.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1007266': }
  nacs_management::printers{ 'cdb_wkrm_copier': }
  nacs_management::printers{ 'cdb_wkrm_colorlaser': }
  nacs_management::printers{ 'cdb_108': }
  nacs_management::printers{ 'cdb_108_copier': }

  nacs_management::map::cdbshared { '1007266': }
  nacs_management::map::alldistrict { '1007266': }
}

# Lainee Meyer Mac
# backup user created
node 'cdb-mac-06230.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011079': }
  nacs_management::printers{ 'cdb_wkrm_copier': }
  nacs_management::printers{ 'cdb_wkrm_colorlaser': }
  nacs_management::printers{ 'cdb_108_copier': }

  nacs_management::map::cdbshared { '1011079': }
  nacs_management::map::alldistrict { '1011079': }
}

# Lindsay Murray Mac
# backup user created
node 'cdb-mac-06231.nas.local' {
  $user = '1004116'

  class { 'roles::teacher::cdb::ceskg':
    user => "${user}",
  }
}

# Beverly Nye
# backup user created
node 'cdb-mac-06229.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005887': }
  nacs_management::printers{ 'cdb_wkrm_copier': }
  nacs_management::printers{ 'cdb_wkrm_colorlaser': }
  nacs_management::printers{ 'cdb_108_copier': }
  nacs_management::printers{ 'cdb_108': }

  nacs_management::map::cdbshared { '1005887': }
  nacs_management::map::alldistrict { '1005887': }
}

# Susie Wagner Mac
# backup user created
node 'cdb-mac-06226.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1007707': }
  nacs_management::printers{ 'ces_kg_colorlaser': }
  nacs_management::printers{ 'nms_ces_ricoh_7500': }

  nacs_management::map::cdbshared { '1007707': }
  nacs_management::map::alldistrict { '1007707': }
}

# Deb Wesche Mac
# backup user created
node 'cdb-mac-06225.nas.local' {
  $user = '1007959'

  class { 'roles::teacher::cdb':
    user => "${user}",
  }
}

# Jackie Westhoven Mac
# backup user created
node 'cdb-mac-06224.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1008015': }
  nacs_management::printers{ 'cdb_wkrm_copier': }
  nacs_management::printers{ 'cdb_wkrm_colorlaser': }

  nacs_management::map::cdbshared { '1008015': }
  nacs_management::map::alldistrict { '1008015': }
}

# Sue Goebel  Mac
# backup user created
node 'cdb-mac-06223.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1003633': }
  nacs_management::printers{ 'cdb_wkrm_copier': }
  nacs_management::printers{ 'cdb_wkrm_colorlaser': }
  nacs_management::printers{ 'wes_wkrm_copier': }
  nacs_management::printers{ 'wes_office': }
  nacs_management::printers{ 'wes_wkrm_color': }


  nacs_management::map::cdbshared { '1003633': }
  nacs_management::map::kdrive { '1003633': }
  nacs_management::map::alldistrict { '1003633': }
}

# Suzanne Badenhop Mac
# backup user created
node 'cdb-mac-06207.nas.local' {
  $user = '1001337'

  class { 'roles::teacher::cdb':
    user => "${user}",
  }
}

# Megan Flanagan Mac
# backup user created
node 'cdb-mac-06234.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011970': }
  nacs_management::printers{ 'cdb_wkrm_copier': }
  nacs_management::printers{ 'cdb_wkrm_colorlaser': }
  nacs_management::printers{ 'cdb_108_copier': }
  nacs_management::printers{ 'ces_upstairs_wkrm': }

  nacs_management::map::cdbshared { '1011970': }
  nacs_management::map::alldistrict { '1011970': }
}

node /^cdb\-m\d+\-\d/ inherits 'winbasenode' {
}


node /^vterm\-\w+/ inherits 'winbasenode' {
}

node 'cdb-201-2.nas.local' inherits 'winbasenode' {
  package { 'rlprintplugin':
    ensure => installed,
  }
}

node 'cdb-201-3.nas.local' inherits 'winbasenode' {
  package { 'rlprintplugin':
    ensure => installed,
  }
}


node 'cdb-100-0.nas.local' inherits 'winbasenode' {
  package { 'IPEVO':
    ensure => installed,
  }
}

node 'cdb-102-0.nas.local' inherits 'winbasenode' {
  package { 'IPEVO':
    ensure => installed,
  }
}

node 'cdb-101-0.nas.local' inherits 'winbasenode' {
  package { 'IPEVO':
    ensure => installed,
  }
}

node 'cdb-103-0.nas.local' inherits 'winbasenode' {
}

node 'cdb-200-0.nas.local' inherits 'winbasenode' {
  package { 'IPEVO':
    ensure => installed,
  }
}

node 'cdb-201-0.nas.local' inherits 'winbasenode' {
  package { 'IPEVO':
    ensure => installed,
  }
}

node 'cdb-203-0.nas.local' inherits 'winbasenode' {
  package { 'IPEVO':
    ensure => installed,
  }
}

node 'cdb-205-0.nas.local' inherits 'winbasenode' {
  package { 'IPEVO':
    ensure => installed,
  }
}


node 'cdb-guid.nas.local' inherits 'winbasenode' {
}

node 'cdb-114-nurse.nas.local' inherits 'winbasenode' {
}

# RATS machines - Custodial - SPED Laptops
node /^cdb\-\w+\-\d/ inherits 'winbasenode' {
}

# CDB Cafe Machine
node 'cdbcafe1.nas.local' inherits 'winbasenode' {
}
