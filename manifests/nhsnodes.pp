node 'nas-snackbar.nas.local' inherits 'winbasenode' {
}

node 'nhs-train-0.nas.local' inherits 'winbasenode' {
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
  include nacs_management::install_printers::nhs_copier
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
  include nacs_managment::saxon

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


