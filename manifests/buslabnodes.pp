
#All business lab computers in Coopers room
node 'nhs-buslab-0.nas.local' inherits 'winbasenode' {
  package { 'elementaryfonts' :
    ensure => installed,
  }
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

}

node 'nhs-bslaptop.nas.local' inherits 'winbasenode' {
}

node 'nhs-buslab-1.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\\Documents and Settings\\All Users\\Desktop\\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}

node 'nhs-buslab-2.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\\Documents and Settings\\All Users\\Desktop\\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}


node 'nhs-buslab-3.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}

node 'nhs-buslab-4.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}

node 'nhs-buslab-5.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}

node 'nhs-buslab-6.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}

node 'nhs-buslab-7.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}

node 'nhs-buslab-8.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}

node 'nhs-buslab-9.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}

node 'nhs-buslab-10.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}


node 'nhs-buslab-11.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}

node 'nhs-buslab-12.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}

node 'nhs-buslab-13.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}


node 'nhs-buslab-14.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}

node 'nhs-buslab-15.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}

node 'nhs-buslab-16.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}

node 'nhs-buslab-17.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}

node 'nhs-buslab-18.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}

node 'nhs-buslab-19.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}

node 'nhs-buslab-20.nas.local' inherits 'winbasenode' {
  package { 'audacity':
    ensure => installed,
  }

  package { 'avc-free':
    ensure => installed,
  }

  package { 'java.jdk':
    ensure => installed,
  }

  package { 'office2007nooutlook' :
    ensure => installed,
  }

  package { 'photoshop7' :
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Putty.lnk':
    ensure  => file,
    source  => 'puppet:///modules/nacs_management/Putty.lnk',
  }
}
