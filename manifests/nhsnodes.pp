node 'hscafe2.nas.local' inherits 'winbasenode' {
}

node 'hscafe1.nas.local' inherits 'winbasenode' {
}

node 'nas-snackbar.nas.local' inherits 'winbasenode' {
}

node 'nhs-train-0.nas.local' inherits 'winbasenode' {
}

# Ann Bosenbark Mac
node 'nhs-mac-06171.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001764': }
  nacs_management::printers{ 'nhs_copier': }
}

# Cori Niese Mac
node 'nhs-mac-06183.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005845': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
}

# Dan Curtis Mac
node 'nhs-mac-06184.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'nhs_copier': }
  nacs_management::printers { 'nhs_color': }
  nacs_management::map::idrive { '1011459':
    server => 'adm-fs.nasadm.local',
  }
}

# Jenna Storrer Mac
node 'nhs-mac-06187.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011072': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
}

# Kelly Cooper Mac
node 'nhs-mac-06176.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011956': }
  nacs_management::printers { 'nhs_140_c': }
  nacs_management::printers { 'nhs_copier': }
}

# Lindy Seagrave
node 'nhs-mac-06182.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1010009': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
}

# Seth Izor Mac
node 'nhs-mac-06169.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011424': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier_2': }
  nacs_management::printers{ 'nhs_wkrm_231': }
  nacs_management::printers{ 'nhs_library': }
  nacs_management::printers{ 'nhs_207': }
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

node 'nhs-jg.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers{ 'nhs_140_c': }
  nacs_management::printers{ 'nhs_color': }
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


