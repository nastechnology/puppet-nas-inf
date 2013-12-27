node 'hscafe2.nas.local' inherits 'winbasenode' {
}

node 'hscafe1.nas.local' inherits 'winbasenode' {
}

node 'nas-snackbar.nas.local' inherits 'winbasenode' {
}

node 'nhs-train-0.nas.local' inherits 'winbasenode' {
}

# Heidi Mekus Mac
node 'nhs-mac-06160.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005320': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_131_copier': }
}

# Ann Bosenbark Mac
node 'nhs-mac-06171.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001764': }
  nacs_management::printers{ 'nhs_copier': }
}

# Cori Niese Mac
node 'nhs-mac-06183.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005845': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
}

# Dan Curtis Mac
node 'nhs-mac-06184.nas.local' inherits 'staffmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'nhs_copier': }
  nacs_management::printers { 'nhs_color': }
  nacs_management::map::idrive { '1011459':
    server => 'adm-fs.nasadm.local',
  }
  
  nacs_management::map::nhsshared { '1011459NHSShared': 
    user => '1011459',
  }
  nacs_management::wireless { 'staff': }

}

# Jenna Storrer Mac
node 'nhs-mac-06187.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011072': }
  nacs_management::map::nhsshared { '1011072NHSShared':
    user => '1011072',
  }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
  nacs_management::wireless { 'teachers': }
}

# Kelly Cooper Mac
node 'nhs-mac-06176.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011956': }
  nacs_management::printers { 'nhs_140_c': }
  nacs_management::printers { 'nhs_copier': }
  nacs_management::wireless { 'teachers': }
}

# Lindy Seagrave
node 'nhs-mac-06182.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1010009': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
  nacs_management::wireless { 'teachers': }
}

# Seth Izor Mac
node 'nhs-mac-06169.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011424': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
  nacs_management::wireless { 'teachers': }
}

# All laptops after initial release below this line please 

# Tory Strock Mac
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
node 'nhs-mac-06046.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1009519': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
}

# Brock Dishop Mac
node 'nhs-mac-06006.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002807': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::wireless { 'teachers': }
}

# Andrew Lesick Mac
node 'nhs-mac-06009.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004928': }
  nacs_management::printers { 'hs_stafflounge': }
  nacs_management::printers { 'nms_band': }
  nacs_management::printers { 'nhs_copier': }
}

# Megan Badenhop Mac
node 'nhs-mac-06007.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1010234': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
}

# Joe Brownson Mac
node 'nhs-mac-06050.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001981': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
}

# Randy Burke Mac
node 'nhs-mac-06049.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002100': }
  nacs_management::printers{ 'nhs_copier': }
}

# Chris Dilbone Mac
node 'nhs-mac-06021.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002793': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
}

# Sarah Aschemeier Mac
node 'nhs-mac-06022.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011900': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
}

# Lori Drewes Mac
node 'nhs-mac-06003.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002877': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_218': }
}

# Virgil Bohls Mac
node 'nhs-mac-06023.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001687': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
}

# Krysann Dunbar 
node 'nhs-mac-06004.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002919': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
}

# Bill Inselman Mac
node 'nhs-mac-06020.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004396': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
}

# Elizabeth French Mac
node 'nhs-mac-06002.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1003402': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
}

# Kaitlin Helberg
node 'nhs-mac-06001.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004109': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_art': }
  nacs_management::printers{ 'hs_stafflounge': }
}

# Paul Hudson Mac
node 'nhs-mac-06000.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004333': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
}

# Jill Petee Mac
node 'nhs-mac-06051.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1006041': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
}

# Denise Lalonde Mac
node 'nhs-mac-06032.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004767': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_140_c': }
  nacs_management::printers{ 'hs_stafflounge': }
}

#Yolanda Monnin Mac
node 'nhs-mac-06060.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005579': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_art': }
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
}

# Sara Schiffer Mac
node 'nhs-mac-06012.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1006685': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_140_c': }
  nacs_management::printers{ 'hs_stafflounge': }
}

# Anita Schlatter Mac
node 'nhs-mac-06011.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011396': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
}

# Teresa Morgan Mac
node 'nhs-mac-06059.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005859': }
  nacs_management::printers { 'hs_stafflounge': }
  nacs_management::printers { 'nhs_copier': }
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
}

# Mary Shook Mac
node 'nhs-mac-06019.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1007000': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
}

# Mark Stacey Mac
node 'nhs-mac-06018.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1007294': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
}

# Kathy Suzo Mac
node 'nhs-mac-06016.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1008505': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
}

# Tracy Weber Mac
node 'nhs-mac-06015.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001351': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
}

# Lori Vorwerk Mac
node 'nhs-mac-06074.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1008456': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
}

# Brian Wolfe Mac
node 'nhs-mac-06073.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1008260': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
}

# Diana Vocke Mac
node 'nhs-mac-06044.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1007623': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_131_copier': }
}

# Jason Zera Mac
node 'nhs-mac-06072.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1008414': }
  nacs_management::printers{ 'nhs_deca': }
  nacs_management::printers{ 'nhs_140_c': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_131_copier': }
}

# Megan Frankart Mac
node 'nhs-mac-06043.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1008463': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_131_copier': }
}

# Dan Baer Mac
node 'nhs-mac-06057.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001358': }
  nacs_management::printers{ 'nhs_copier': }
  nacs_management::printers{ 'nhs_131_copier': }
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


node 'nas-lib-laptop.nas.local' inherits 'winbasenode' {
  package { 'SirsiWorkflows' :
    ensure => installed,
  }
}

node 'nhs-235-1' inherits 'winbasenode' {
  package { 'photoshop7' :
    ensure => installed,
  }
}

node 'nhs-235-2' inherits 'winbasenode' {
  package { 'photoshop7' :
    ensure => installed,
  }
}

node 'nhs-235-3' inherits 'winbasenode' {
  package { 'photoshop7' :
    ensure => installed,
  }
}

node 'nhs-239-0.nas.local' inherits 'winbasenode' {
  package { 'office2007nooutlook':
    ensure => installed,
  }
}

node 'nhs-226-0.nas.local' inherits 'winbasenode' {
  package { 'office2007nooutlook':
    ensure => installed,
  }
}

node 'nhs-226-1.nas.local' inherits 'winbasenode' {
  package { 'office2007nooutlook':
    ensure => installed,
  }
}

node 'nhs-226-2.nas.local' inherits 'winbasenode' {
  package { 'office2007nooutlook':
    ensure => installed,
  }
}

node 'nhs-226-3.nas.local' inherits 'winbasenode' {
  package { 'office2007nooutlook':
    ensure => installed,
  }
}

node 'nhs-218-0.nas.local' inherits 'winbasenode' {
  include nacs_management::saxon
  include nacs_management::cm-trl
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


# RATS machines - Custodial - SPED Laptops
node /^nhs\-\w+\-\d/ inherits 'winbasenode' {
}

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

node 'nhs-jg.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers{ 'nhs_140_c': }
  nacs_management::printers{ 'nhs_color': }  
  nacs_management::wireless { 'teachers': }
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

node 'mad-cart-1.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-2.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-3.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-4.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-5.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-6.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-7.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-8.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-9.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-10.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-11.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-12.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-13.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-14.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-15.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-16.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-17.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-18.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-19.nas.local' inherits 'macbasenode' {
}

node 'mad-cart-20.nas.local' inherits 'macbasenode' {
}


