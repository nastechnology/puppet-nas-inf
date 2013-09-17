# All C.D. Brillhart Machines that have a digit after building name
# this excludes any lab's or special computer names i.e. gym, mus
node /^cdb\-\d+\-\d+/ inherits 'winbasenode' {
}

node 'cdb-118-spe.nas.local' inherits 'winbasenode' {
}

node 'cdb-m128-0.nas.local' inherits 'winbasenode' {
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
