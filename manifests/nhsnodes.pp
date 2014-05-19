#
#  Staff MacBook Laptops
#

# Heidi Mekus Mac
# backup user created
# Backup enabled
node 'nhs-mac-06160.nas.local' {
  $user = '1005320'
  class { 'roles::teacher::nhs':
    user => "${user}",
  }
}

# Ann Bosenbark Mac
node 'nhs-mac-06171.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001764': }
  nacs_management::printers{ 'nhs_copier': }

  nacs_management::map::alldistrict { '1001764': }
  nacs_management::map::nhsshared { '1001764': }
}

# Cori Niese Mac
# backup user created
node 'nhs-mac-06183.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005845': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }

  nacs_management::map::alldistrict { '1005845': }
  nacs_management::map::nhsshared { '1005845': }
}

# Dan Curtis Mac
# backup user created
# backup enabled
node 'nhs-mac-06184.nas.local' inherits 'staffmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'nhs_copier': }
  nacs_management::printers { 'nhs_color': }
  nacs_management::map::idrive { '1011459':
    server => 'adm-fs.nasadm.local',
  }

  nacs_management::map::nhsshared { '1011459':  }
  nacs_management::map::alldistrict { '1011459': }

  nacs_management::tmutil { '1011459': }
}

# Jenna Storrer Mac
# backup user created
node 'nhs-mac-06187.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011072': }
  nacs_management::map::nhsshared { '1011072': }

  nacs_management::map::alldistrict { '1011072': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
}

# Kelly Cooper Mac
# backup user created
node 'nhs-mac-06176.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011956': }
  nacs_management::printers { 'nhs_140_c': }
  nacs_management::printers { 'nhs_copier': }
  nacs_management::map::nhsshared { '1011956': }

  nacs_management::map::alldistrict { '1011956': }
}

# Lindy Seagrave
# backup user created
node 'nhs-mac-06182.nas.local' {
  $user = '1010009'

  class { 'roles::teacher::nhs':
    user => "${user}",
  }
}

# Seth Izor Mac
# backup user created
node 'nhs-mac-06169.nas.local' {
  $user = '1011424'

  class { 'roles::teacher::nhs':
    user => "${user}",
  }
}

# All laptops after initial release below this line please

# Tory Strock Mac
# backup user created
node 'nhs-mac-06005.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1009512': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
}

# Cinda Strock Mac
# backup user created
node 'nhs-mac-06046.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1009519': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }

  nacs_management::map::nhsshared { '1009519': }
  nacs_management::map::alldistrict { '1009519': }
}

# Brock Dishop Mac
# backup user created
node 'nhs-mac-06006.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002807': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }

  nacs_management::map::nhsshared { '1002807': }
  nacs_management::map::alldistrict { '1002807': }
}

# Andrew Lesick Mac
# backup user created
node 'nhs-mac-06009.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004928': }
  nacs_management::printers { 'hs_stafflounge': }
  nacs_management::printers { 'nhs_copier': }

  nacs_management::printers { 'nms_office_copier': }
  nacs_management::printers { 'nms_colorlaser': }
  nacs_management::printers { 'nms_office': }

  nacs_management::map::nhsshared { '1004928': }
  nacs_management::map::alldistrict { '1004928': }
}

# Megan Badenhop Mac
# backup user created
node 'nhs-mac-06007.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1010234': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }

  nacs_management::map::alldistrict { '1010234': }
  nacs_management::map::nhsshared { '1010234': }
}

# Joe Brownson Mac
# backup user created
node 'nhs-mac-06050.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001981': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }

  nacs_management::map::nhsshared { '1001981': }
  nacs_management::map::alldistrict { '1001981': }
}

# Randy Burke Mac
# backup user created
node 'nhs-mac-06049.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002100': }
  nacs_management::printers{ 'nhs_copier': }

  nacs_management::map::nhsshared { '1002100': }
  nacs_management::map::alldistrict { '1002100': }
}

# Chris Dilbone Mac
# backup user created
node 'nhs-mac-06021.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002793': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }

  nacs_management::map::nhsshared { '1002793': }
  nacs_management::map::alldistrict { '1002793': }
}

# Sarah Aschemeier Mac
# backup user created
node 'nhs-mac-06022.nas.local' inherits 'teachersmacnode' {
  $user = '1011900'
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { "${user}": }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }

  nacs_management::map::nhsshared { "${user}": }
  nacs_management::map::alldistrict { "${user}": }
}

# Lori Drewes Mac
# backup user created
node 'nhs-mac-06003.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002877': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_218': }

  nacs_management::map::nhsshared { '1002877': }
  nacs_management::map::alldistrict { '1002877': }
}

# Virgil Bohls Mac
# backup user created
node 'nhs-mac-06023.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001687': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_140_c': }
  nacs_management::printers{ 'hs_stafflounge': }
  nacs_management::printers{ 'nhs_207': }

  nacs_management::map::nhsshared { '1001687': }
  nacs_management::map::alldistrict { '1001687': }
}

# Krysann Dunbar
# backup user created
node 'nhs-mac-06004.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002919': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }

  nacs_management::map::nhsshared { '1002919': }
  nacs_management::map::alldistrict { '1002919': }
}

# Bill Inselman Mac
# backup user created
node 'nhs-mac-06020.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004396': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }

  nacs_management::map::nhsshared { '1004396': }
  nacs_management::map::alldistrict { '1004396': }
}

# Elizabeth French Mac
# backup user created
node 'nhs-mac-06002.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1003402': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
  nacs_management::printers{ 'nhs_copier': }

  nacs_management::map::nhsshared { '1003402': }
  nacs_management::map::alldistrict { '1003402': }
}

# Kaitlin Helberg
# backup user created
node 'nhs-mac-06001.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004109': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_art': }
  nacs_management::printers{ 'hs_stafflounge': }

  nacs_management::map::nhsshared { '1004109': }
  nacs_management::map::alldistrict { '1004109': }
}

# Paul Hudson Mac
# backup user created
node 'nhs-mac-06000.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004333': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }

  nacs_management::map::nhsshared { '1004333': }
  nacs_management::map::alldistrict { '1004333': }
}

# Jill Petee Mac
# backup user created
node 'nhs-mac-06051.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1006041': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }

  nacs_management::map::nhsshared { '1006041': }
  nacs_management::map::alldistrict { '1006041': }
}

# Denise Lalonde Mac
# backup user created
node 'nhs-mac-06032.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004767': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_140_c': }
  nacs_management::printers{ 'hs_stafflounge': }

  nacs_management::map::nhsshared { '1004767': }
  nacs_management::map::alldistrict { '1004767': }
}

#Yolanda Monnin Mac
# backup user created
node 'nhs-mac-06060.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005579': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_art': }

  nacs_management::map::nhsshared { '1005579': }
  nacs_management::map::alldistrict { '1005579': }
}

#Kevin Milius Mac
node 'nhs-mac-06061.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005453': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }

  nacs_management::map::nhsshared { '1005453': }
  nacs_management::map::alldistrict { '1005453': }
}

# Sara Schiffer Mac
# backup user created
node 'nhs-mac-06012.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1006685': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_140_c': }
  nacs_management::printers{ 'hs_stafflounge': }
  nacs_management::printers{ 'nhs_color': }

  nacs_management::map::nhsshared { '1006685': }
  nacs_management::map::alldistrict { '1006685': }
}

# Anita Schlatter Mac
# backup user created
node 'nhs-mac-06011.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011396': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }

  nacs_management::map::nhsshared { '1011396': }
  nacs_management::map::alldistrict { '1011396': }
}

# Teresa Morgan Mac
# backup user created
node 'nhs-mac-06059.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005859': }
  nacs_management::printers { 'hs_stafflounge': }
  nacs_management::printers { 'nhs_copier': }

  nacs_management::map::nhsshared { '1005859': }
  nacs_management::map::alldistrict { '1005859': }
}

# Bev Nelson Mac
node 'nhs-mac-06058.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005754': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }

  nacs_management::map::nhsshared { '1005754': }
  nacs_management::map::alldistrict { '1005754': }
}


# Rebecca Seigneur Mac
node 'nhs-mac-06010.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1010549': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }

  nacs_management::map::nhsshared { '1010549': }
  nacs_management::map::alldistrict { '1010549': }
}

# Mary Shook Mac
node 'nhs-mac-06019.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1007000': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }

  nacs_management::map::nhsshared { '1007000': }
  nacs_management::map::alldistrict { '1007000': }
}

# Mark Stacey Mac
# backup user created
node 'nhs-mac-06018.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1007294': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }

  nacs_management::map::nhsshared { '1007294': }
  nacs_management::map::alldistrict { '1007294': }
}

# Kathy Suzo Mac
node 'nhs-mac-06016.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1008505': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_color': }

  nacs_management::map::nhsshared { '1008505': }
  nacs_management::map::alldistrict { '1008505': }
}

# Tracy Weber Mac
# backup user created
node 'nhs-mac-06015.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001351': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }

  nacs_management::map::nhsshared { '1001351': }
  nacs_management::map::alldistrict { '1001351': }
}

# Lori Vorwerk Mac
# backup user created
node 'nhs-mac-06074.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1008456': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }

  nacs_management::map::nhsshared { '1008456': }
  nacs_management::map::alldistrict { '1008456': }
}

# Brian Wolfe Mac
# backup user created
node 'nhs-mac-06073.nas.local' {
  $user = '1008260'

  class { 'roles::teacher::nhs':
    user => "${user}",
  }

}

# Diana Vocke Mac
# backup user created
node 'nhs-mac-06044.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1007623': }
  nacs_management::map::admk { '1007623': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_131_copier': }

  nacs_management::map::nhsshared { '1007623': }
  nacs_management::map::alldistrict { '1007623': }
}

# Jason Zera Mac
# backup user created
node 'nhs-mac-06072.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1008414': }
  nacs_management::printers{ 'nhs_deca': }
  nacs_management::printers{ 'nhs_140_c': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_131_copier': }

  nacs_management::map::nhsshared { '1008414': }
  nacs_management::map::alldistrict { '1008414': }
}

# Megan Frankart Mac
# backup user created
# Backup enabled
node 'nhs-mac-06043.nas.local' {
  $user = '1008463'

  class { 'roles::teacher::nhs':
    user => "${user}",
  }
}

# Dan Baer Mac
node 'nhs-mac-06057.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001358': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_131_copier': }

  nacs_management::map::nhsshared { '1001358': }
  nacs_management::map::alldistrict { '1001358': }
}

# 21st Cent Grant Mac
node 'nhs-mac-06247.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_131_copier': }
}

# NHS Band Lab Macs
node 'nhs-band-1.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_131_copier': }
}

node 'nhs-band-2.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_131_copier': }
}

node 'nhs-band-3.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_131_copier': }
}

node 'nhs-band-4.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_131_copier': }
}

node 'nhs-band-5.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_131_copier': }
}


#
# NHS Windows Machines
#

node 'hscafe2.nas.local' {
  include roles
}

node 'hscafe1.nas.local' {
  include roles
}

node 'nas-snackbar.nas.local' {
  include roles
}

node 'nhs-train-0.nas.local' {
  include roles
}

node 'nas-lib-laptop.nas.local' {
  include roles

  package { 'SirsiWorkflows' :
    ensure => installed,
  }
}

node 'nhs-235-1' {
  include roles

  package { 'photoshop7' :
    ensure => installed,
  }
}

node 'nhs-235-2' {
  include roles

  package { 'photoshop7' :
    ensure => installed,
  }
}

node 'nhs-235-3' {
  include roles

  package { 'photoshop7' :
    ensure => installed,
  }
}

node 'nhs-239-0.nas.local' {
  include roles::teacher

  package { 'office2007nooutlook':
    ensure => installed,
  }
}

node 'nhs-226-0.nas.local' {
  include roles::teacher

  package { 'office2007nooutlook':
    ensure => installed,
  }
}

node 'nhs-226-1.nas.local' {
  include roles
  package { 'office2007nooutlook':
    ensure => installed,
  }
}

node 'nhs-226-2.nas.local' {
  include roles

  package { 'office2007nooutlook':
    ensure => installed,
  }
}

node 'nhs-226-3.nas.local' {
  include roles

  package { 'office2007nooutlook':
    ensure => installed,
  }
}

node 'nhs-218-0.nas.local' inherits 'winbasenode' {
  include nacs_management::saxon
}

node 'nhs-235-0.nas.local' inherits 'winbasenode' {
  package { 'dropbox':
    ensure => installed,
  }

  package { 'PhotoStory':
    ensure => installed,
  }

  package { 'office2007nooutlook':
    ensure => installed,
  }
}


# CES LIBLAB
node /^nhs\-studylab\-\d+/ {
  include roles::labs
}

# RATS machines - Custodial - SPED Laptops
#node /^nhs\-\w+\-\d/ inherits 'winbasenode' {
#}

# All NHS Machines that have a digit after building name
# this excludes any lab's or special computer names i.e. gym, yrbk
node /^nhs\-\d+\-\d+\.nas\.local/ inherits 'winbasenode' {
}

node 'nhs-gym-0.nas.local' inherits 'winbasenode' {
}

node 'nhs-spedlap-8.nas.local' inherits 'winbasenode' {
  package { 'office2007nooutlook':
    ensure => installed,
  }
}

# Joe Good
node 'nhs-jg.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers{ 'nhs_140_c': }
  nacs_management::printers{ 'nhs_color': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
}

# NHS Teacher machines
node /^nhs\-\d+\-0\.nas\.local/ inherits 'winbasenode' {
}

#
# HS Math Teachers
#
node 'nhs-233-0.nas.local' inherits 'winbasenode' {
  include nacs_management::saxon

  package { 'TIResources':
    ensure => installed,
  }
  package { 'Algebra1InstPresi':
    ensure => installed,
  }
  package { 'Algebra2InstPresi':
    ensure => installed,
  }
  package { 'GeometryInstPresi':
    ensure => installed,
  }

}

node 'nhs-231-0.nas.local' {
  include roles::teacher
}

node 'nhs-223-0.nas.local' inherits 'winbasenode' {
  include nacs_management::saxon

  package { 'TIResources':
    ensure => installed,
  }

  package { 'Algebra1InstPresi':
    ensure => installed,
  }
  package { 'Algebra2InstPresi':
    ensure => installed,
  }
  package { 'GeometryInstPresi':
    ensure => installed,
  }

  package { 'trackmm3':
    ensure => installed,
  }

  file { "C:/Hy-Sport/TFMM3/tfmeet3.mem":
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/tfmeet3.mem',
    require => Package['trackmm3'],
  }

  package { 'tracktm2':
    ensure  => installed,
    require => Package['trackmm3'],
  }

  file { "C:/Hy-Sport/TFTM2/TFTM2.LIC":
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/TFTM2.LIC',
    require => Package['tracktm2'],
  }

  exec { 'ChangeHySportPerms':
    command => 'C:\SetACL.exe -on "C:\Hy-Sport" -ot file -actn ace -ace "n:Everyone;p:full"',
    require => Package['tracktm2'],
  }
}

node 'nhs-221-0.nas.local' inherits 'winbasenode' {
  include nacs_management::saxon

  package { 'TIResources':
    ensure => installed,
  }

  package { 'Algebra1InstPresi':
    ensure => installed,
  }
  package { 'Algebra2InstPresi':
    ensure => installed,
  }
  package { 'GeometryInstPresi':
    ensure => installed,
  }

}

node 'nhs-229-0.nas.local' inherits 'winbasenode' {
  include nacs_management::saxon

  package { 'TIResources':
    ensure => installed,
  }
  package { 'Algebra1InstPresi':
    ensure => installed,
  }
  package { 'Algebra2InstPresi':
    ensure => installed,
  }
  package { 'GeometryInstPresi':
    ensure => installed,
  }

  package { 'precalctestgen':
    ensure => installed,
  }

  package { 'ti83emulator':
    ensure => installed,
  }

}

node 'nhs-141-0.nas.local' inherits 'winbasenode' {
  include nacs_managment::saxon
}

node 'nhs-130-0.nas.local' inherits 'winbasenode' {
  include nacs_management::saxon

  package { 'TIResources':
    ensure => installed,
  }
  package { 'Algebra1InstPresi':
    ensure => installed,
  }
  package { 'Algebra2InstPresi':
    ensure => installed,
  }
  package { 'GeometryInstPresi':
    ensure => installed,
  }
}

node 'nhs-228-0.nas.local' inherits 'winbasenode' {
  include nacs_management::saxon

  package { 'TIResources':
    ensure => installed,
  }
  package { 'Algebra1InstPresi':
    ensure => installed,
  }
  package { 'Algebra2InstPresi':
    ensure => installed,
  }
  package { 'GeometryInstPresi':
    ensure => installed,
  }

}

#
# End of Math Teachers
#


#
# MAD Cart
#

node 'nhs-mad-1.nas.local' inherits 'macbasenode' {
  package { 'JavaOSX2013-05':
    ensure   => installed,
    provider => pkgdmg,
    source   => 'http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2013-05.dmg',
  }

}

node 'nhs-mad-2.nas.local' inherits 'macbasenode' {
  package { 'JavaOSX2013-05':
    ensure   => installed,
    provider => pkgdmg,
    source   => 'http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2013-05.dmg',
  }

}

node 'nhs-mad-3.nas.local' inherits 'macbasenode' {
  package { 'JavaOSX2013-05':
    ensure   => installed,
    provider => pkgdmg,
    source   => 'http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2013-05.dmg',
  }

}

node 'nhs-mad-4.nas.local' inherits 'macbasenode' {

  package { 'JavaOSX2013-05':
    ensure   => installed,
    provider => pkgdmg,
    source   => 'http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2013-05.dmg',
  }

}

node 'nhs-mad-5.nas.local' inherits 'macbasenode' {

  package { 'JavaOSX2013-05':
    ensure   => installed,
    provider => pkgdmg,
    source   => 'http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2013-05.dmg',
  }

}

node 'nhs-mad-6.nas.local' inherits 'macbasenode' {
  package { 'JavaOSX2013-05':
    ensure   => installed,
    provider => pkgdmg,
    source   => 'http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2013-05.dmg',
  }

}

node 'nhs-mad-7.nas.local' inherits 'macbasenode' {
  package { 'JavaOSX2013-05':
    ensure   => installed,
    provider => pkgdmg,
    source   => 'http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2013-05.dmg',
  }

}

node 'nhs-mad-8.nas.local' inherits 'macbasenode' {
  package { 'JavaOSX2013-05':
    ensure   => installed,
    provider => pkgdmg,
    source   => 'http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2013-05.dmg',
  }
}

node 'nhs-mad-9.nas.local' inherits 'macbasenode' {

  package { 'JavaOSX2013-05':
    ensure   => installed,
    provider => pkgdmg,
    source   => 'http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2013-05.dmg',
  }

}

node 'nhs-mad-10.nas.local' inherits 'macbasenode' {

  package { 'JavaOSX2013-05':
    ensure   => installed,
    provider => pkgdmg,
    source   => 'http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2013-05.dmg',
  }

#  file { '/etc/paths.d/android-sdk':
#    content => "/opt/NACSManage/android-sdk/tools",
#    require => Package['AndroidSdk-1.0'],
#  }

#  file { '/opt/NACSManage/android-sdk':
#    ensure => directory,
#    owner  => 'root',
#    group  => 'wheel',
#    mode   => '0777',
#  }

#  exec { 'ChangeMadAndroidSdkRecurse':
#    command => '/bin/chmod -R 777 /opt/NACSManage/android-sdk',
#  }
}

node 'nhs-mad-11.nas.local' inherits 'macbasenode' {
}

node 'nhs-mad-12.nas.local' inherits 'macbasenode' {
}

node 'nhs-mad-13.nas.local' inherits 'macbasenode' {
}

node 'nhs-mad-14.nas.local' inherits 'macbasenode' {
}

node 'nhs-mad-15.nas.local' inherits 'macbasenode' {
}

node 'nhs-mad-16.nas.local' inherits 'macbasenode' {
}

node 'nhs-mad-17.nas.local' inherits 'macbasenode' {
}

node 'nhs-mad-18.nas.local' inherits 'macbasenode' {
}

node 'nhs-mad-19.nas.local' inherits 'macbasenode' {
}

node 'nhs-mad-20.nas.local' inherits 'macbasenode' {
}
