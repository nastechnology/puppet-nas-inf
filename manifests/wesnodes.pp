
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
node 'wes-mac-06186.nas.local' inherits 'staffmacnode' {
  $user = '1011044'
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { $user:
    server => 'adm-fs.nasadm.local',
  }

  nacs_management::map::wesshared { $user: }
  nacs_management::map::admk { $user: }
  nacs_management::map::alldistrict { $user: }

  nacs_management::printers { 'wes_office': }
  nacs_management::printers { 'wes_wkrm_color': }

  nacs_management::tmutil { $user: }
}

# Doug Edwards mac laptop
# backup user created
node 'wes-mac-06175.nas.local' {
  $user = '1003038'

  class { 'roles::teacher::wes':
    user => $user,
  }
}

# Jen Gerken mac laptop
# backup user created
node 'wes-mac-06189.nas.local' {
  $user = '1003500'
  class { 'roles::teacher::wes':
    user => $user,
  }
}

# Megan Sherman mac laptop
# backup user created
node 'wes-mac-06170.nas.local' {
  $user = '1011942'

  class { 'roles::teacher::wes':
    user => $user,
  }
}

#
# All Laptops after initial release below this line
#

# Tim Atkinson mac laptop
# backup user created
node 'wes-mac-06210.nas.local' {
  $user = '1001211'

  class { 'roles::teacher::wes':
    user => $user,
  }
}

# Denise Davis mac laptop
node 'wes-mac-06206.nas.local' {
  $user = '1002632'
  class { 'roles::teacher::wes':
    user => $user,
  }
}

# Christy Eberle mac laptop
node 'wes-mac-06202.nas.local' inherits 'teachersmacnode' {
  $user = '1002975'
  class { 'nacs_management::allprinters': }

  nacs_management::map::idrive { $user: }
  nacs_management::map::weshared { $user: }
  nacs_management::map::alldistrict { $user: }

  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Angiala Franz Mac
node 'wes-mac-06222.nas.local' inherits 'teachersmacnode' {
  $user = '1003353'
  class { 'nacs_management::allprinters': }

  nacs_management::map::idrive { $user: }
  nacs_management::map::wesshared { $user: }
  nacs_management::map::alldistrict { $user: }

  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Sheri Mansfield Mac
# backup user created
node 'wes-mac-06201.nas.local' {
  $user = '1005159'
  class { 'roles::teacher::wes':
    user => $user,
  }
}

# Kendra Getz Mac
node 'wes-mac-06221.nas.local' inherits 'teachersmacnode' {
  $user = '1011935'
  class { 'nacs_management::allprinters': }

  nacs_management::map::idrive { $user: }
  nacs_management::map::wesshared { $user: }
  nacs_management::map::alldistrict { $user: }

  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Kara Miller Mac
# backup user created
node 'wes-mac-06200.nas.local' {
  $user = '1008654'

  class { 'roles::teacher::wes':
    user => $user,
  }
}


# Deb Jones Mac
# backup user created
node 'wes-mac-06220.nas.local' {
  $user = '1004473'

  class { 'roles::teacher::wes':
    user => $user,
  }
}


# Kathy Jones Mac
# backup user created
node 'wes-mac-06219.nas.local' {
  $user = '1011417'

  class { 'roles::teacher::wes':
    user => $user,
  }
}

# Jill Niese Mac
# backup user created
node 'wes-mac-06217.nas.local' {
  $user = '1005852'
  class { 'roles::teacher::wes':
    user => $user,
  }
}

# Jason Ohlemacher Mac
# backup user created
node 'wes-mac-06216.nas.local' {
  $user = '1011114'
  class { 'roles::teacher::wes':
    user => $user,
  }
}

# Lisa Leonard Mac
node 'wes-mac-06218.nas.local' inherits 'teachersmacnode' {
  $user = '1007875'
  class { 'nacs_management::allprinters': }

  nacs_management::map::idrive { $user: }
  nacs_management::map::wesshared { $user: }
  nacs_management::map::alldistrict { $user: }

  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Lisa Schimmoeller Mac
node 'wes-mac-06215.nas.local' inherits 'teachersmacnode' {
  $user = '1006692'
  class { 'nacs_management::allprinters': }

  nacs_management::map::idrive { $user: }
  nacs_management::map::wesshared { $user: }
  nacs_management::map::alldistrict { $user: }

  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Andrea Wardinski Mac
node 'wes-mac-06212.nas.local' inherits 'teachersmacnode' {
  $user = '1004004'
  class { 'nacs_management::allprinters': }

  nacs_management::map::idrive { $user: }
  nacs_management::map::wesshared { $user: }
  nacs_management::map::alldistrict { $user: }

  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Louise Weekley
node 'wes-mac-06203.nas.local' inherits 'teachersmacnode' {
  $user = '1003318'
  class { 'nacs_management::allprinters': }

  nacs_management::map::idrive { $user: }
  nacs_management::map::wesshared { $user: }
  nacs_management::map::alldistrict { $user: }

  nacs_management::printers { 'wes_wkrm_copier': }
  nacs_management::printers { 'wes_office': }
}

# Julie Wiemken Mac
# backup user created
node 'wes-mac-06214.nas.local' {
  $user = '1008113'

  class { 'roles::teacher::wes':
    user => $user,
  }
}

# Julie Yunker Mac
node 'wes-mac-06213.nas.local' inherits 'teachersmacnode' {
  $user = '1008358'
  class { 'nacs_management::allprinters': }

  nacs_management::map::idrive { $user: }
  nacs_management::map::wesshared { $user: }
  nacs_management::map::alldistrict { $user: }

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

node /^wes\-lab\-\d+\.nas\.local/ {
  include roles::labs::weslab
}

node 'wes-105-0.nas.local' inherits 'winbasenode' {
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
