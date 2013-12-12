
# All West Machines that have a digit after building name
# this excludes any lab's or special computer names i.e. gym, mus
node /^wes\-\d+\-\d+/ inherits 'winbasenode' {

}

node 'wes-gym-0.nas.local' inherits 'winbasenode' {
}

node 'wescafe1.nas.local' inherits 'winbasenode' {

    class { 'nacs_management::autologin':
      user     => 'wescafe1',
      password => 'dinnerbell',
    }
}

# Wendy Nashu Mac laptop
node 'wes-mac-06186.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011044':
    server => 'adm-fs.nasadm.local',
  }
  nacs_management::printers { 'wes_office': }
  nacs_management::printers { 'wes_wkrm_color': }
}

# Doug Edwards mac laptop
node 'wes-mac-06175.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1003088': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Jen Gerken mac laptop
node 'wes-mac-06189.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1003500': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Megan Sherman mac laptop
node 'wes-mac-06170.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011942': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

#
# All Laptops after initial release below this line
#

# Tim Atkinson mac laptop
node 'wes-mac-06210.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001211': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Denise Davis mac laptop
node 'wes-mac-06206.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002632': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Christy Eberle mac laptop
node 'wes-mac-06202.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002975': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Angiala Franz Mac
node 'wes-mac-06222.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1003353': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Sheri Mansfield Mac
node 'wes-mac-06201.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005159': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Kendra Getz Mac
node 'wes-mac-06221.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011935': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Kara Miller Mac
node 'wes-mac-06200.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1008654': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Deb Jones Mac
node 'wes-mac-06220.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004473': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Kathy Jones Mac
node 'wes-mac-06219.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011417': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Jill Niese Mac
node 'wes-mac-06217.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005852': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Jason Ohlemacher Mac
node 'wes-mac-06216.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011114': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Lisa Leonard Mac
node 'wes-mac-06218.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1007875': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Lisa Schimmoeller Mac
node 'wes-mac-06215.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1006692': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Andrea Wardinski Mac
node 'wes-mac-06212.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004004': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Louise Weekley
node 'wes-mac-06203.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1003318': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Julie Wiemken Mac
node 'wes-mac-06214.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1008113': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Julie Yunker Mac
node 'wes-mac-06213.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1008358': }
  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

node 'wes-108-0.nas.local' inherits 'winbasenode' {
}

node 'wes-107-0.nas.local' inherits 'winbasenode' {
  package { 'accelscan':
    ensure => installed,
  }
}

node 'wes-102-0.nas.local' inherits 'winbasenode' {
  package { 'accelscan':
    ensure => installed,
  }
}

node 'wes-101-0.nas.local' inherits 'winbasenode' {
  package { 'accelscan':
    ensure => installed,
  }
}

node /^wes\-lab\-\d+\.nas\.local/ inherits 'winbasenode' {
}

node 'wes-105-0.nas.local' inherits 'winbasenode' {
  include nacs_management::screen::1024x768
}

node 'wes-lib-1.nas.local' inherits 'winbasenode' {
}


# RATS machines - Custodial - SPED Laptops
node /^wes\-\w+\-\d/ inherits 'winbasenode' {
}


node 'wes-202-0.nas.local' inherits 'winbasenode' {
  package { 'examview.readingstreetGr3':
    ensure => installed,
  }

  package { 'examview.mathCCGr3':
    ensure => installed,
  }
}


node 'wes-209-0.nas.local' inherits 'winbasenode' {
  package { 'examview.readingstreetGr3':
    ensure => installed,
  }
  package { 'examview.mathCCGr3':
    ensure => installed,
  }
}

node 'wes-203-0.nas.local' inherits 'winbasenode' {
  package { 'examview.readingstreetGr3':
    ensure => installed,
  }
  package { 'examview.mathCCGr3':
    ensure => installed,
  }
}

node 'wes-208-0.nas.local' inherits 'winbasenode' {
  package { 'examview.readingstreetGr3':
    ensure => installed,
  }
  package { 'examview.mathCCGr3':
    ensure => installed,
  }
}


node 'wes-207-0.nas.local' inherits 'winbasenode' {
  package { 'examview.readingstreetGr3':
    ensure => installed,
  }
  package { 'examview.mathCCGr3':
    ensure => installed,
  }
}

node 'wes-205-0.nas.local' inherits 'winbasenode' {
  package { 'examview.readingstreetGr3':
    ensure => installed,
  }
  package { 'examview.mathCCGr3':
    ensure => installed,
  }
}

node 'wes-206-0.nas.local' inherits 'winbasenode' {
  package { 'examview.readingstreetGr3':
    ensure => installed,
  }
  package { 'examview.mathCCGr3':
    ensure => installed,
  }
}

node 'wes-214-0.nas.local' inherits 'winbasenode' {
  package { 'examview.mathCCGr3':
    ensure => installed,
  }
  package { 'examview.readingstreetGr3':
    ensure => installed,
  }
}
