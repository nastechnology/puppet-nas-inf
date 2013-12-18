# All NMS Machines that have a digit after building name
# this excludes any lab's or special computer names i.e. gym, mus
node /^nms\-\d+\-\d+/ inherits 'winbasenode' {
}

node 'nms-108-0.nas.local' inherits 'winbasenode' {
}

node 'nms-aircart-1.nas.local' inherits 'macbasenode' {

}

node 'nms-aircart-2.nas.local' inherits 'macbasenode' {

}

# Matt Dietrich Mac laptop
node 'nms-mac-06173.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002786':
    server => 'adm-fs.nasadm.local',
  }

  nacs_management::map::admk { '1002786AdmK':
    user => '1002786',
  }

  nacs_management::printers { 'nms_office_copier': }
  nacs_management::printers { 'nms_colorlaser': }
  nacs_management::printers { 'nms_office': }
  nacs_management::map::nmsshared { '1002786nmsshared':
    user => '1002786',
  }
}

# Angies Myers mac laptop
node 'nms-mac-06179.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005705': }
  nacs_management::printers { 'nms_8lab': }
  nacs_management::printers { 'nms_upstairs_copier': }
}

# Chad Brubaker mac laptop
node 'nms-mac-06167.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001988': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Tracey Cohrs mac laptop
node 'nms-mac-06180.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005999': }
  nacs_management::printers { 'nms_office_copier': }
  nacs_management::printers { 'nms_ces_ricoh_7500': }
  nacs_management::printers { 'nms_8lab': }
  nacs_management::printers { 'nms_upstairs_copier': }
}

# Linda Hummer mac laptop
node 'nms-mac-06177.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004354': }
  nacs_management::printers { 'nms_office_copier': }
  nacs_management::printers { 'nms_office': }
  nacs_management::printers { 'nms_8lab': }
  nacs_management::printers { 'nms_upstairs_copier': }
}

# Mallory Weaver mac laptop
node 'nms-mac-06168.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011983': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Sherry Hogan mac laptop
node 'nms-mac-06178.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004200': }
  nacs_management::printers { 'nms_office_copier': }
  nacs_management::printers { 'nms_office': }
  nacs_management::printers { 'nms_ces_ricoh_7500': }
}

# --------------- Added After Test Group --------------- 

# Kathy Beck Mac
node 'nms-mac-06079.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001519': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Kelley Borton Mac
node 'nms-mac-06078.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001736': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Lynne Debbe Mac
node 'nms-mac-06084.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002660': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Sara Dilbone Mac
node 'nms-mac-06162.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002800': }
  nacs_management::printers { 'ces_wkrm': }
}

# Christina Fedderke Mac
node 'nms-mac-06083.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011121': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Celeste Fryman Mac
node 'nms-mac-06165.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001540': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Kenny Bostelman Mac
node 'nms-mac-06077.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1001792': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Jay Brown Mac
node 'nms-mac-06076.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1010556': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Christa Burken Mac
node 'nms-mac-06075.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1002121': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# LuAnn Gorsuch Mac
node 'nms-mac-06082.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1003696': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Andrea Hoffman Mac
node 'nms-mac-06164.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004186': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Jodi Irving Mac
node 'nms-mac-06089.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004410': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Isiah Keefer Mac
node 'nms-mac-06088.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011977': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Holli Horn Mac
node 'nms-mac-06081.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1010199': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Mike Hummer Mac
node 'nms-mac-06041.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1004361': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Jim Murcko Mac
node 'nms-mac-06080.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005677': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Jeff Peters Mac
node 'nms-mac-06039.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1010037': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Brittany Labie Mac
node 'nms-mac-06087.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1010072': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Ashley Miller Mac
node 'nms-mac-06085.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1009333': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Peggy Mossing Mac
node 'nms-mac-06086.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1005642': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Cara Ressler Mac
node 'nms-mac-06094.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1006237': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Jen Rausch Mac
node 'nms-mac-06038.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1009505': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Jason Seiler Mac
node 'nms-mac-06093.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1006895': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Tyler Swary Mac
node 'nms-mac-06092.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011949': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Heather Villagomez Mac
node 'nms-mac-06091.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011928': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Brenda Zuch Mac
node 'nms-mac-06090.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1008435': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

# Amanda Gilles Mac
node 'nms-mac-06062.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::map::idrive { '1011990': }
  nacs_management::printers { 'nms_upstairs_copier': }
  nacs_management::printers { 'nms_office': }
}

node 'nms-111-0.nas.local' inherits 'winbasenode' {
  package { 'office2007nooutlook':
    ensure => installed,
  }
}

node 'nms-103-0.nas.local' inherits 'winbasenode' {
  package { 'Ready2GoOn':
    ensure => installed,
  }

  package { 'PHLiteratureG7':
    ensure => installed,
  }
}

node 'nms-204-0.nas.local' inherits 'winbasenode' {

  package { 'PHLiteratureGr8':
    ensure => installed,
  }

}

node 'nms-211-0.nas.local' inherits 'winbasenode' {
#  include nacs_management::saxon
  include nacs_management::examview::algebra1
  include nacs_management::examview
}


node 'nms-209-0.nas.local' inherits 'winbasenode' {
  include nacs_management::examview
  include nacs_management::examview::historyto1877
}

node 'nms-health-0.nas.local' inherits 'winbasenode' {
}

node 'nms-art-0.nas.local' inherits 'winbasenode' {
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

node 'nms-102-0.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
  include nacs_management::atrtt
}

node 'nms-207-0a.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
  include nacs_management::atrtt
}

node 'nms-207-0.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
  include nacs_management::atrtt

  package { 'cdburnerxp':
    ensure => installed,
  }
}

node 'nms-207-0b.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
  include nacs_management::atrtt
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

node 'nms-212-0.nas.local' inherits 'winbasenode' {
  package {'examview.readingstreetGr6':
    ensure => installed,
  }

  package { 'examview.mathCCGr6':
    ensure => installed,
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

node 'nms-6lab-1.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-2.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-3.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-4.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-5.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-6.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-7.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-8.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-9.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-10.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-11.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-12.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-13.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-14.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-15.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-16.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-17.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-18.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-19.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-20.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-21.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-22.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-23.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-24.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-25.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-26.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-27.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-6lab-28.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

# NMS 7 Lab
node 'nms-7lab-1.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-2.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-3.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-4.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-5.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-6.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-7.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-8.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-9.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-10.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-11.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-12.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-13.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-14.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-15.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-16.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-17.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-18.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-19.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-20.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-21.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-22.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-23.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-24.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-25.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-26.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-27.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-28.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-29.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-7lab-30.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

# NMS 8 Lab
node 'nms-8lab-1.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-2.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-3.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-4.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-5.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-6.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-7.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-8.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-9.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-10.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-11.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-12.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-13.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-14.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-15.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-16.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-17.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-18.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-19.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-20.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-21.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-22.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-23.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-24.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-25.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-26.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-27.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-28.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-29.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
}

node 'nms-8lab-30.nas.local' inherits 'winbasenode' {
  include nacs_management::atrts
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
