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
}

# Char Weber
node 'boe-ssec.nasadm.local' {
  $user = '1007861'

  class { 'roles::staff::boe::secretaries':
    user => $user
  }
}
