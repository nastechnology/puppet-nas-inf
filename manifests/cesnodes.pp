# Adams Machine
# backup user created
node 'ces-mac-06174.nas.local' inherits 'staffmacnode' {
  $user = '1005838'

  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { $user :
    server => 'adm-fs.nasadm.local',
  }
  nacs_management::map::cesshared { $user : }
  nacs_management::map::admk { $user : }
  nacs_management::map::alldistrict { $user : }
  nacs_management::map::cesoffice { $user : }

  nacs_management::printers{ 'ces_office_copier': }
  nacs_management::printers{ 'ces_wkrm': }
  nacs_management::printers{ 'ces_upstairs_wkrm': }

  nacs_management::tmutil { $user : }

}

# Brett Cordy mac
# backup user created
node 'ces-mac-06188.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1010584' : }
  nacs_management::map::cesshared { '1010584': }
  nacs_management::map::alldistrict { '1010584': }
  nacs_management::printers{ 'ces_wkrm': }
  nacs_management::printers{ 'ces_upstairs_wkrm': }
}

# ------------ After Image ------------ #

# Ken Boland Mac
# backup user created
node 'ces-mac-06237.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001694' : }
  nacs_management::map::cesshared { '1001694': }
  nacs_management::map::alldistrict { '1001694': }
  nacs_management::printers{ 'ces_wkrm': }
  nacs_management::printers{ 'ces_upstairs_wkrm': }
}

# Tara Boyer Mac
# backup user created
node 'ces-mac-06236.nas.local' {
  $user = '1010633'
  class { 'roles::teacher::ces':
    user => $user,
  }
}

# Chelsea Dietrich Mac
# backup user created
node 'ces-mac-06235.nas.local' {
  $user = '1011963'
  class { 'roles::teacher::ces':
    user => $user,
  }
}

# Jenna Gray Mac
# backup user created
node 'ces-mac-06055.nas.local' {
  $user = '1009382'
  class { 'roles::teacher::ces':
    user => $user,
  }
}

# Cami Haas Mac
# backup user created
node 'ces-mac-06070.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011914' : }
  nacs_management::map::cesshared { '1011914': }
  nacs_management::map::alldistrict { '1011914': }
  nacs_management::printers{ 'ces_wkrm': }
  nacs_management::printers{ 'ces_upstairs_wkrm': }
}

# Pam Hersha Mac
# backup user created
node 'ces-mac-06054.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004123' : }
  nacs_management::map::cesshared { '1004123': }
  nacs_management::map::alldistrict { '1004123': }
  nacs_management::printers{ 'ces_wkrm': }
  nacs_management::printers{ 'ces_upstairs_wkrm': }
  nacs_management::printers{ 'nms_ces_ricoh_7500': }
}

# Kelly Haseman Mac
# backup user created
node 'ces-mac-06069.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1008647' : }
  nacs_management::map::cesshared { '1008647': }
  nacs_management::map::alldistrict { '1008647': }
  nacs_management::printers{ 'ces_wkrm': }
  nacs_management::printers{ 'ces_upstairs_wkrm': }
}

# Mackenzie Plassman Mac
# backup user created
node 'ces-mac-06053.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1010792' : }
  nacs_management::map::cesshared { '1010792': }
  nacs_management::map::alldistrict { '1010792': }
  nacs_management::printers{ 'ces_wkrm': }
  nacs_management::printers{ 'ces_upstairs_wkrm': }
}

# Jessica Ramirez Mac
# backup user created
node 'ces-mac-06068.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011445' : }
  nacs_management::map::cesshared { '1011445': }
  nacs_management::map::alldistrict { '1011445': }
  nacs_management::printers{ 'ces_wkrm': }
  nacs_management::printers{ 'ces_upstairs_wkrm': }
}

# Erin Failor Mac
# backup user created
node 'ces-mac-06233.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1009011' : }
  nacs_management::map::cesshared { '1009011': }
  nacs_management::map::alldistrict { '1009011': }
  nacs_management::printers{ 'ces_wkrm': }
  nacs_management::printers{ 'ces_upstairs_wkrm': }
}

# Sarah Rosebrock Mac
# backup user created
node 'ces-mac-06071.nas.local' {
  class { 'roles::teacher::ces':
    user => '1008491',
  }
}

# Shawna Schroeder Mac
# backup user created
node 'ces-mac-06064.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1006825' : }
  nacs_management::map::cesshared { '1006825': }
  nacs_management::map::alldistrict { '1006825': }
  nacs_management::printers{ 'ces_wkrm': }
  nacs_management::printers{ 'ces_upstairs_wkrm': }
}

# Kristin Shepard Mac
# backup user created
node 'ces-mac-06063.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001036' : }
  nacs_management::map::cesshared { '1001036': }
  nacs_management::map::alldistrict { '1001036': }
  nacs_management::printers{ 'ces_wkrm': }
  nacs_management::printers{ 'ces_upstairs_wkrm': }
}

# Cyndy Tilley Mac
# backup user created
node 'ces-mac-06065.nas.local' {
  $user = '1007497'

  class { 'roles::teacher::ces':
    user => $user,
  }
}

# Aaron Walston Mac
# backup user created
node 'ces-mac-06052.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011921' : }
  nacs_management::map::cesshared { '1011921': }
  nacs_management::map::alldistrict { '1011921': }
  nacs_management::printers{ 'ces_wkrm': }
  nacs_management::printers{ 'ces_upstairs_wkrm': }
}

# Greg Wisniewski Mac
# backup user created
node 'ces-mac-06067.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1008204' : }
  nacs_management::map::cesshared { '1008204': }
  nacs_management::map::alldistrict { '1008204': }
  nacs_management::printers{ 'ces_wkrm': }
  nacs_management::printers{ 'ces_upstairs_wkrm': }
}

# Karl Yunker Mac
# backup user created
node 'ces-mac-06056.nas.local' {
  $user = '1008365'

  class { 'roles::teacher::ces':
    user => $user,
  }
}

# CES Lab
node /^ces\-lab\-\d+\.nas\.local/ {
  include roles::labs::ceslab
}

node 'ces-113-nur.nas.local' inherits 'winbasenode' {
}

#Skills Lab
node 'ces-skills-0a.nas.local' inherits 'winbasenode' {

  package { 'prezidesktop':
    ensure => installed,
  }
}

# Parcc lab @ nhs
node 'ces-b108-kg0.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }
}

# Parcc lab @ nhs
node 'ces-b110-kg0.nas.local' {
  include roles::labs::lab8

}

# CES Basement computers
node 'ces-b102-0' inherits 'winbasenode' {
}

node 'ces-b114-0' inherits 'winbasenode' {
}

# ViewWise Machine
node 'ces-vterm' inherits 'winbasenode' {
}

# CES Kindergarten
node /^ces\-b110\-kg\d\.nas\.local/ inherits 'winbasenode' {
  include nacs_management::elementaryfonts

  package { 'examview.mathCCGrK':
    ensure => installed,
  }
}

node /^ces\-b109\-kg\d\.nas\.local/ inherits 'winbasenode' {
  include nacs_management::elementaryfonts

  package { 'examview.mathCCGrK':
    ensure => installed,
  }
}

node /^ces\-b108\-kg\d\.nas\.local/ inherits 'winbasenode' {
  include nacs_management::elementaryfonts

  package { 'examview.mathCCGrK':
    ensure => installed,
  }
}

node /^ces\-b107\-kg\d\.nas\.local/ inherits 'winbasenode' {
  include nacs_management::elementaryfonts

  package { 'examview.mathCCGrK':
    ensure => installed,
  }
}

# CES Cafe money machines

node 'cescafe1.nas.local' inherits 'winbasenode' {
}

node 'cescafe2.nas.local' inherits 'winbasenode' {
}

# CES LIBLAB
node /^ces\-liblab\-\d+\.nas\.local/ {
  include roles::labs::cesliblab
}

# All Central Machines that have a digit after building name
# this excludes any lab's or special computer names i.e. gym, mus
node /^ces\-\d+\-\d+/ inherits 'winbasenode' {
}



node 'ces-108-0.nas.local' inherits 'winbasenode' {
  package { 'Gr4Math' :
    ensure => installed,
  }

  package { 'dropbox':
    ensure => installed,
  }
}

node 'ces-109-0.nas.local' inherits 'winbasenode' {
  package { 'Gr4Math' :
    ensure => installed,
  }
}

node 'ces-104-0.nas.local' inherits 'winbasenode' {
  package { 'Gr4Math' :
    ensure => installed,
  }
}

node 'ces-212-0.nas.local' inherits 'winbasenode' {
  package { 'Gr4Math' :
    ensure => installed,
  }
  package { 'examview.readingstreetGr4':
    ensure => installed,
  }

}

node 'ces-106-0.nas.local' inherits 'winbasenode' {
  package { 'Gr4Math' :
    ensure => installed,
  }
  package { 'examview.mathCCGr5':
    ensure => installed,
  }
  package { 'examview.readingstreetGr4':
    ensure => installed,
  }
  package { 'examview.readingstreetGr5':
    ensure => installed,
  }

}

node 'ces-205-0.nas.local' inherits 'winbasenode' {
  package { 'examview.mathCCGr5':
    ensure => installed,
  }
}

node 'ces-206-0.nas.local' inherits 'winbasenode' {
  package { 'examview.mathCCGr5':
    ensure => installed,
  }
}


node 'ces-105-0.nas.local' inherits 'winbasenode' {
  package { 'examview.readingstreetGr4':
    ensure => installed,
  }
}

node 'ces-110-0.nas.local' inherits 'winbasenode' {
  package { 'examview.readingstreetGr4':
    ensure => installed,
  }
}

node 'ces-107-0.nas.local' inherits 'winbasenode' {
  package { 'examview.readingstreetGr4':
    ensure => installed,
  }
}


node 'ces-207-0.nas.local' inherits 'winbasenode' {
  package { 'examview.readingstreetGr5':
    ensure => installed,
  }
}

node 'ces-208-0.nas.local' inherits 'winbasenode' {
  package { 'examview.readingstreetGr5':
    ensure => installed,
  }
}

node 'ces-209-0.nas.local' inherits 'winbasenode' {
  package { 'examview.readingstreetGr5':
    ensure => installed,
  }
}

node 'ces-204-0.nas.local' inherits 'winbasenode' {
  package { 'GoogleEarth':
    ensure => installed,
  }
}
