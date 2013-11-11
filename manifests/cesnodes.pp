# All Central Machines that have a digit after building name
# this excludes any lab's or special computer names i.e. gym, mus
node /^ces\-\d+\-\d+/ inherits 'winbasenode' {
}

# Adams Machine
node 'ces-mac-06174.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005838':
    server => 'adm-fs.nasadm.local',
  }
  nacs_management::printers{ 'ces_office_copier': }
  nacs_management::printers{ 'ces_wkrm': }
  nacs_management::printers{ 'ces_upstairs_wkrm': }
}

# Brett Cordy mac
node 'ces-mac-06188.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1010584' : }
  nacs_management::printers { 'ces_upstairs_wkrm': }
  nacs_mnaagement::printers { 'ces_wkrm': }
}

# CES Lab
node /^ces\-lab\-\d+\.nas\.local/ inherits 'winbasenode' {
#  include wpkg::nms-labs
#  include nacs_win_management::oaascreensize
}

node 'ces-113-nur.nas.local' inherits 'winbasenode' {
}

#Skills Lab
node 'ces-skills-0a.nas.local' inherits 'winbasenode' {

  package { 'prezidesktop':
    ensure => installed,
  }
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

# RATS machines - Custodial - SPED Laptops
node /^ces\-\w+\-\d/ inherits 'winbasenode' {
}


node 'ces-108-0.nas.local' inherits 'winbasenode' {
  package { 'Gr4Math' :
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
