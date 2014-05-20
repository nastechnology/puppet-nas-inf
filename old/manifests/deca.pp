node 'nhs-138-0.nas.local' inherits 'winbasenode' {
  package { 'introtobusiness':
    ensure => installed,
  }

  package { 'marketingessentials':
    ensure => installed,
  }

  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}

node 'nhs-138-1.nas.local' inherits 'winbasenode' {
  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}

node 'nhs-138-2.nas.local' inherits 'winbasenode' {
  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}

node 'nhs-138-3.nas.local' inherits 'winbasenode' {
  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}

node 'nhs-138-4.nas.local' inherits 'winbasenode' {
  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}

node 'nhs-138-5.nas.local' inherits 'winbasenode' {
  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }
  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}
node 'nhs-138-6.nas.local' inherits 'winbasenode' {
  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }
  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}
node 'nhs-138-7.nas.local' inherits 'winbasenode' {
  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }
  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}
node 'nhs-138-8.nas.local' inherits 'winbasenode' {
  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }
  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}
node 'nhs-138-9.nas.local' inherits 'winbasenode' {
  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }
  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}
node 'nhs-138-10.nas.local' inherits 'winbasenode' {
  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }
  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}
node 'nhs-138-11.nas.local' inherits 'winbasenode' {
  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }
  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}
node 'nhs-138-12.nas.local' inherits 'winbasenode' {
  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }
  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}
node 'nhs-138-13.nas.local' inherits 'winbasenode' {
  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }
  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}
node 'nhs-138-14.nas.local' inherits 'winbasenode' {
  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }
  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}
node 'nhs-138-15.nas.local' inherits 'winbasenode' {
  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }
  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}
node 'nhs-138-16.nas.local' inherits 'winbasenode' {
  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }
  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}
node 'nhs-138-17.nas.local' inherits 'winbasenode' {
  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }
  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}
node 'nhs-138-18.nas.local' inherits 'winbasenode' {
  package { 'virtualbusiness.sports':
    ensure => installed,
  }
  package { 'virtualbusiness.retail':
    ensure => installed,
  }
  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Retailing 2.0.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Retailing 2.0.lnk',
  }

  file { 'C:\Documents and Settings\All Users\Desktop\Virtual Business - Sports.lnk':
    ensure => 'file',
    owner  => Everyone,
    group  => Everyone,
    mode   => '0777',
    source => 'puppet:///modules/nacs_management/Virtual Business - Sports.lnk',
  }
}
