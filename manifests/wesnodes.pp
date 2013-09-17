
# All West Machines that have a digit after building name
# this excludes any lab's or special computer names i.e. gym, mus
node /^wes\-\d+\-\d+/ inherits 'winbasenode' {

  registry_value { 'hkcu\Software\Microsoft\Windows NT\CurrentVersion\Windows\Device':
    type=>string,
    data=> '\\\\nas-printserver\\wes_wkrm_copier,winspool,Ne00',
  }
}

node 'wes-gym-0.nas.local' inherits 'winbasenode' {
}

node 'wescafe1.nas.local' inherits 'winbasenode' {

    class { 'nacs_management::autologin':
      user     => 'wescafe1',
      password => 'dinnerbell',
    }
}

node 'wes-108-0.nas.local' inherits 'winbasenode' {
}


node 'wes-101-0.nas.local' inherits 'winbasenode' {
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
