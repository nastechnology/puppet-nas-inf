# Ruth Niese
node 'boe-emis.nas.local' {
  $user = '9909042'

  class { 'roles::staff::boe::emis':
    user => $user,
  }
}

# Sara Buchhop
node 'boe-acctrecv.nasadm.local' {
  $user = '1002044'

  class { 'roles::staff::boe::treasurers':
    user => $user,
  }
}

# Mike Bostelman
node 'boe-treasurer.nasadm.local' {
  $user = '1001799'

  class { 'roles::staff::boe::treasurers':
    user => $user,
  }

  package { 'dropbox':
    ensure => installed,
  }
}

# Char Weber
node 'boe-ssec.nasadm.local' {
  $user = '1007861'

  class { 'roles::staff::boe::secretary':
    user => $user
  }
}

# Jodi Stover
node 'boe-payroll.nasadm.local' {
  $user = '1007385'

  class { 'roles::staff::boe::treasurers':
    user => $user
  }
}

# Amy Dietrich
node 'boe-acctpay.nasadm.local' {
  $user = '1009568'

  class { 'roles::staff::boe::treasurers':
    user => $user
  }
}
