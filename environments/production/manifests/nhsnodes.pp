#
# Admin MacBook Laptops
#

# Ryan Wilde Mac
# Backup user created
# Backup enabled
node 'nhs-mac-06307.nas.local' {
  include roles::staff::nhs

  package { 'VMware_Horizon_View_Client-3.0.0-1887158':
    ensure   => installed,
    provider => 'pkgdmg',
    source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2014/07/VMware_Horizon_View_Client-3.0.0-1887158.dmg',
  }
}

# Dan Curtis Mac
# backup user created
# backup enabled
node 'nhs-mac-06184.nas.local' {
  $user = '1011459'
  class { 'roles::staff::nhs':
    user => $user,
  }
}

# Josh Meyer

node 'nhs-mac-05647.nas.local' {
  $user = '1012645'
  class { 'roles::staff::nhs':
    user   => $user,
    idrive => 0,
  }

  package { 'Google_Drive-20140709':
    ensure   => installed,
    provider => 'pkgdmg',
    source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2014/07/Google_Drive-20140709.dmg',
  }
}

#
#  Staff MacBook Laptops
#

# Heidi Mekus Mac
# backup user created
# Backup enabled
node 'nhs-mac-06160.nas.local' {
  $user = '1005320'
  class { 'roles::teacher::nhs':
    user => $user,
  }
}

# Cori Niese Mac
# backup user created
# Backup enabled
node 'nhs-mac-06183.nas.local' {
  $user = '1005845'
  class { 'roles::teacher::nhs':
    user => $user,
  }
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
node 'nhs-mac-06176.nas.local' {
  $user = '1011956'

  class { 'roles::teacher::nhs':
    user => $user,
  }
}

# Lindy Seagrave
# backup user created
node 'nhs-mac-06182.nas.local' {
  $user = '1010009'

  class { 'roles::teacher::nhs':
    user => $user,
  }
}

# Seth Izor Mac
# backup user created
node 'nhs-mac-06169.nas.local' {
  $user = '1011424'

  class { 'roles::teacher::nhs':
    user => $user,
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
  nacs_management::printers{ 'nhs_copier': }
}

# Cinda Strock Mac
# backup enabled
node 'nhs-mac-06046.nas.local' {
  $user = '1009519'

  class { 'roles::teacher::nhs':
    user => $user,
  }
}


# Brock Dishop Mac
# backup enabled
node 'nhs-mac-06006.nas.local' {
  $user = '1002807'

  class { 'roles::teacher::nhs':
    user => $user,
  }
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

# Megan Badenhop Mac backup user created
# backup enabled
node 'nhs-mac-06007.nas.local' {
  $user = '1010234'

  class { 'roles::teacher::nhs':
    user => $user,
  }
}


# Joe Brownson Mac
# backup user created
# Backup enabled
node 'nhs-mac-06050.nas.local' {
  $user = '1001981'
  class { 'roles::teacher::nhs':
    user => $user,
  }
}

# Randy Burke Mac
# backup user created
# backup enabled
node 'nhs-mac-06049.nas.local' {
  $user = '1002100'

  class { 'roles::teacher::nhs':
    user => $user,
  }
}

# Chris Dilbone Mac
# backup enabled
node 'nhs-mac-06021.nas.local' {
  $user = '1002793'
  class { 'roles::teacher::nhs':
    user => $user,
  }
}

# Sarah Aschemeier Mac
# backup user created
node 'nhs-mac-06022.nas.local' {
  $user = '1011900'
  class { 'roles::teacher::nhs':
    user => $user,
  }
}

# Lori Drewes Mac
# backup enabled
node 'nhs-mac-06003.nas.local' {
  $user = '1002877'

  class { 'roles::teacher::nhs':
    user => $user,
  }
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
node 'nhs-mac-06004.nas.local' {
  $user = '1002919'
  class { 'roles::teacher::nhs':
    user => $user,
  }
}

# Bill Inselman Mac
# backup enabled
node 'nhs-mac-06020.nas.local' {
  $user = '1004396'
  class { 'roles::teacher::nhs':
    user => $user,
  }
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
node 'nhs-mac-06001.nas.local' {
  include roles::teacher::nhs
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
node 'nhs-mac-06051.nas.local' {
  $user = '1006041'
  class { 'roles::teacher::nhs':
    user => $user,
  }
}

# Denise Lalonde Mac
# backup enabled
node 'nhs-mac-06032.nas.local' {
  $user = '1004767'
  class { 'roles::teacher::nhs':
    user => $user,
  }
}

#Yolanda Monnin Mac
# backup user created
node 'nhs-mac-06060.nas.local' {
  $user = '1005579'
  class { 'roles::teacher::nhs':
    user => $user,
  }
}

#Natasha Zsigray Mac
node 'nhs-mac-06061.nas.local' {
  $user = '1012684'
  class { 'roles::teacher::nhs':
    user   => $user,
    idrive => '0',
  }
}

# Sara Schiffer Mac
# backup user created
node 'nhs-mac-06012.nas.local' {
  $user = '1006685'

  class { 'roles::teacher::nhs':
    user => $user,
  }

}

# Anita Schlatter Mac
# backup user created
# backup enabled
node 'nhs-mac-06011.nas.local' {
  $user = '1011396'

  class { 'roles::teacher::nhs':
    user => $user,
  }
}

# Teresa Morgan Mac
# backup user created
node 'nhs-mac-06059.nas.local' {
  $user = '1005859'

  class { 'roles::teacher::nhs':
    user   => $user,
  }
}

# Tom Palmer Mac
node 'nhs-mac-06058.nas.local' {
  $user = '1009960'
  class { 'roles::teacher::nhs':
    user   => $user,
    idrive => '0',
  }
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

# Ben George Mac
node 'nhs-mac-06019.nas.local'  {
  $user = '1012652'

  class { 'roles::teacher::nhs':
    user   => $user,
    idrive => '0',
  }
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

# Katie Frey Mac
node 'nhs-mac-06016.nas.local' {
  $user = 1011217
  class { 'roles::teacher::nhs':
    user   => $user,
    idrive => '0',
  }
}

# Lindsey Steele Mac
node 'nhs-mac-06233.nas.local' {
  $user = '1012631'
  class { 'roles::teacher::nhs':
    user   => $user,
    idrive => '0',
  }
}

# Tracy Weber Mac
# backup enabled
node 'nhs-mac-06015.nas.local' {
  $user = '1001351'
  class { 'roles::teacher::nhs':
    user => $user,
  }
}

# Lori Vorwerk Mac
# backup user created
node 'nhs-mac-06074.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1008456': }
  nacs_management::printers{ 'nms_office_copier': }
  nacs_management::printers{ 'nms_ces_ricoh_7500': }
  nacs_management::printers{ 'nms_colorlaser': }

  nacs_management::map::nmsshared { '1008456': }
  nacs_management::map::alldistrict { '1008456': }
}

# Brian Wolfe Mac
# backup user created
node 'nhs-mac-06073.nas.local' {
  $user = '1008260'

  class { 'roles::teacher::nhs':
    user => $user,
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
    user => $user,
  }
}

# Lindsey Wagner Mac
node 'nhs-mac-06057.nas.local' {
  $user = '1012677'

  class { 'roles::teacher::nhs':
    user => $user,
  }
}

# Brett Ziegler
node 'nhs-mac-05594.nas.local' {
  $user = '1012712'

  class { 'roles::teacher::nhs':
    user => $user,
  }
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


node 'nhs-spedlap-8.nas.local' inherits 'winbasenode' {
  package { 'office2007nooutlook':
    ensure => installed,
  }
}
