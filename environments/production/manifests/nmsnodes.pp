# All NMS Machines that have a digit after building name
# this excludes any lab's or special computer names i.e. gym, mus
#node /^nms\-\d+\-\d+/ inherits 'winbasenode' {
#}



# Matt Dietrich Mac laptop
# backup user created
node 'nms-mac-06173.nas.local' inherits 'staffmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002786':
    server => 'adm-fs.nasadm.local',
  }

  nacs_management::map::alldistrict { '1002786': }

  nacs_management::map::admk { '1002786': }

  nacs_management::printers { 'nms_office_copier': }
  nacs_management::printers { 'nms_colorlaser': }
  nacs_management::printers { 'nms_office': }
  nacs_management::map::nmsshared { '1002786': }

  nacs_management::tmutil { '1002786': }

  package { 'Java7u51':
    ensure   => installed,
    provider => pkgdmg,
    source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2014/02/jre-7u51-macosx-x64.dmg',
  }
}

# Angies Myers mac laptop
# backup user created
node 'nms-mac-06179.nas.local' {
  $user = '1005705'
  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Chad Brubaker mac laptop
# backup user created
node 'nms-mac-06167.nas.local' {
  $user = '1001988'
  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Tracey Cohrs mac laptop
# backup user created
node 'nms-mac-06180.nas.local' {
  $user = '1005999'
  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Linda Hummer mac laptop
# backup user created
node 'nms-mac-06177.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004354': }
  nacs_management::printers { 'nms_office_copier': }
  nacs_management::printers { 'nms_office': }
  nacs_management::printers { 'nms_8lab': }
  nacs_management::printers { 'nms_upstairs_copier': }

  nacs_management::map::nmsshared { '1004354': }
  nacs_management::map::alldistrict { '1004354': }

}

# Mallory Weaver mac laptop
# backup user created
node 'nms-mac-06168.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011983': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }

  nacs_management::map::nmsshared { '1011983': }
  nacs_management::map::alldistrict { '1011983': }
}

# Sherry Hogan mac laptop
# backup user created
node 'nms-mac-06178.nas.local' {
  $user = '1004200'
  class { 'roles::teacher::nms':
    user => $user,
  }
}

# --------------- Added After Test Group ---------------

# Kathy Beck Mac
# backup user created
node 'nms-mac-06079.nas.local' {
  $user = '1001519'
  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Lynne Debbe Mac
# backup user created
node 'nms-mac-06084.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002660': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
  nacs_management::printers { 'nms_office_copier': }

  nacs_management::map::nmsshared { '1002660':  }
  nacs_management::map::alldistrict { '1002660': }
}

# Sara Dilbone Mac
# backup user created
node 'nms-mac-06162.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002800': }
  nacs_management::printers { 'ces_wkrm': }
  nacs_management::printers { 'ces_upstairs_wkrm': }

  nacs_management::map::cesshared { '1002800': }
  nacs_management::map::alldistrict { '1002800': }
}

# Christina Fedderke Mac
# backup user created
node 'nms-mac-06083.nas.local' {
  $user = '1011121'

  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Celeste Fryman Mac
# backup user created
node 'nms-mac-06165.nas.local' {
  $user = '1001540'

  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Kenny Bostelman Mac
# backup user created
node 'nms-mac-06077.nas.local' {
  $user = '1001792'
  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Jay Brown Mac
# backup user created
node 'nms-mac-06076.nas.local' {
  $user = '1010556'
  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Christa Burken Mac
# backup user created
node 'nms-mac-06075.nas.local' {
  $user = '1002121'

  class { 'roles::teacher::nms':
    user => $user,
  }

}

# LuAnn Gorsuch Mac
node 'nms-mac-06082.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1003696': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
  nacs_management::printers { 'nms_office_copier': }

  nacs_management::map::nmsshared { '1003696':  }
  nacs_management::map::alldistrict { '1003696': }
}

# Andrea Hoffman Mac
# backup user created
node 'nms-mac-06164.nas.local' {
  $user = '1004186'
  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Jodi Irving Mac
# backup user created
node 'nms-mac-06089.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004410': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
  nacs_management::printers { 'nms_office_copier': }
  nacs_management::printers { 'nms_colorlaser': }

  nacs_management::map::nmsshared { '1004410':  }
  nacs_management::map::alldistrict { '1004410': }
}

# Isiah Keefer Mac
# backup user created
node 'nms-mac-06088.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011977': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
  nacs_management::printers { 'nms_office_copier': }

  nacs_management::map::nmsshared { '1011977':  }
}

# Holli Horn Mac
# backup user created
node 'nms-mac-06081.nas.local' {
  $user = '1010199'
  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Joe Good Mac
node 'nms-mac-06041.nas.local' {
  $user = '1003668'

  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Jim Murcko Mac
# backup user created
node 'nms-mac-06080.nas.local' {
  $user = '1005677'

  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Jeff Peters Mac
# backup user created
node 'nms-mac-06039.nas.local' {
  $user = '1010037'

  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Brittany Labie Mac
# backup user created
node 'nms-mac-06087.nas.local' {
  $user = '1010072'

  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Ashley Miller Mac
# backup user created
node 'nms-mac-06085.nas.local' {
  $user = '1009333'

  class { 'roles::teacher::nms':
    user => $user,
  }
}


# Peggy Mossing Mac
# backup user created
node 'nms-mac-06086.nas.local' {
  $user = '1005642'

  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Cara Ressler Mac
# backup user created
node 'nms-mac-06094.nas.local' {
  $user = '1006237'
  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Jen Rausch Mac
# backup user created
node 'nms-mac-06038.nas.local' {
  $user = '1009505'

  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Jason Seiler Mac
# backup user created
node 'nms-mac-06093.nas.local' {
  $user = '1006895'

  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Tyler Swary Mac
# backup user created
node 'nms-mac-06092.nas.local' {
  $user = '1011949'

  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Heather Villagomez Mac
# backup user created
node 'nms-mac-06091.nas.local' inherits 'teachersmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011928': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
  nacs_management::printers { 'nms_office_copier': }

  nacs_management::map::nmsshared { '1011928':  }
  nacs_management::map::alldistrict { '1011928': }
}

# Brenda Zuch Mac
# backup user created
node 'nms-mac-06090.nas.local' {
  $user = '1008435'

  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Amanda Gilles Mac
# backup user created
node 'nms-mac-06062.nas.local' {
  $user = '1011990'

  class { 'roles::teacher::nms':
    user => $user,
  }
}

# Parcc lab @ NHS
node 'nms-111-0.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }

  auto_login { 'testuser':
    password => 'test',
  }
}

#Parcc lab @nhs
node 'nms-b100-0.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }

}

#Parcc lab @ nhs
node 'nms-103-0.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }

}

#Parcc lab @ nhs
node 'nms-110-0.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }

}
# Parcc lab @ nhs
node 'nms-202-0.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }

}

#Parcc lab @ nhs
node 'nms-109-0.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }

}

#Parcc lab @ nhs
node 'nms-204-0.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }

}

node 'nms-211-0.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }
}

# Parcc Lab @ nhs
node 'nms-209-0.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }
}

#Parcc lab @ nhs
node 'nms-107-0.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }
}

node 'nms-health-0.nas.local' inherits 'winbasenode' {
}

#Parcc lab @ nhs
node 'nms-art-0.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }
}

node 'nms-conf.nas.local' inherits 'winbasenode' {
}

node 'nms-c99-0.nas.local' inherits 'winbasenode' {
  package { 'Gr4Math' :
    ensure => installed,
  }
  package { 'examview.mathCCGr5':
    ensure => installed,
  }
}

node 'nms-c101-0.nas.local' inherits 'winbasenode' {
  package { 'examview.mathCCGr6':
    ensure => installed,
  }
}

# Parcc lab @ nhs
node 'nms-102-0.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }
}

# Parcc lab @ nhs
node 'nms-206-0.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }
}

node 'nms-207-0a.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }
}

# Parcc lab @nhs
node 'nms-207-0.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }
}

# Parcc lab @ nhs
node 'nms-207-0b.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }
}

# Parcc lab @ nhs
node 'nms-b101-0.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }
}



node 'nms-c100-0.nas.local' inherits 'winbasenode' {
  package { 'examview.readingstreetGr6':
    ensure => installed,
  }
}

node 'nms-c203-0.nas.local' inherits 'winbasenode' {
  package { 'examview.readingstreetGr6':
    ensure => installed,
  }

  package { 'lakeshore.tts':
    ensure => installed,
  }

  package { 'examview.mathCCGr6':
    ensure => installed,
  }
}

node 'nms-c202-0.nas.local' inherits 'winbasenode' {
  package { 'examview.readingstreetGr6':
    ensure => installed,
  }

  package { 'examview.mathCCGr6':
    ensure => installed,
  }

  package { 'lakeshore.tts':
    ensure => installed,
  }
}


#Parcc lab @ nhs
node 'nms-212-0.nas.local' {
  include roles::labs::lab8

  user { 'testuser':
    ensure   => present,
    home     => 'C:/Documents and Settings/testuser',
    password => 'test',
  }

}

# RATS machines - Custodial - SPED Laptops
node /^nms\-\w+\-\d/ inherits 'winbasenode' {
}

node 'nms-spedlap-6.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
  include nacs_management::atrtt
}

node 'nms-spedlap-7.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
  include nacs_management::atrtt
}

# Library Machines
node /^nms\-lib\-cast\d/ inherits 'winbasenode' {
}

# All NMS Labs

node 'nms-6lab-1.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-2.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-3.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-4.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-5.nas.local'  {
  include roles::labs::lab6
}

node 'nms-6lab-6.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-7.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-8.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-9.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-10.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-11.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-12.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-13.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-14.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-15.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-16.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-17.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-18.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-19.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-20.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-21.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-22.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-23.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-24.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-25.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-26.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-27.nas.local' {
  include roles::labs::lab6
}

node 'nms-6lab-28.nas.local' {
  include roles::labs::lab6
}

# NMS 7 Lab
node 'nms-7lab-1.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-2.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-3.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-4.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-5.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-6.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-7.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-8.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-9.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-10.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-11.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-12.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-13.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-14.nas.local' {
  include roles::labs::lab7

}

node 'nms-7lab-15.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-16.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-17.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-18.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-19.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-20.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-21.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-22.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-23.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-24.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-25.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-26.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-27.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-28.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-29.nas.local' {
  include roles::labs::lab7
}

node 'nms-7lab-30.nas.local' {
  include roles::labs::lab7
}

# NMS 8 Lab
node 'nms-8lab-1.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-2.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-3.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-4.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-5.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-6.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-7.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-8.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-9.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-10.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-11.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-12.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-13.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-14.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-15.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-16.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-17.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-18.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-19.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-20.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-21.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-22.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-23.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-24.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-25.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-26.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-27.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-28.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-29.nas.local' {
  include roles::labs::lab8
}

node 'nms-8lab-30.nas.local' {
  include roles::labs::lab8
}


# All NMS Labs Teacher machines
node 'nms-6lab-0.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
  include nacs_management::atrtt
}

node 'nms-7lab-0.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
  include nacs_management::atrtt
  package { 'cdburnerxp':
    ensure => installed,
  }

  package { 'googledrive':
    ensure => installed,
  }
}

node 'nms-8lab-0.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
  include nacs_management::atrtt
}


# STEM Laptops
node /^nms\-stem\-\d+\.nas\.local/ inherits 'winbasenode' {
}


node 'nms-mc-0.nas.local' inherits 'winbasenode' {
}


node 'nms-b104-0.nas.local' inherits 'winbasenode' {

}
