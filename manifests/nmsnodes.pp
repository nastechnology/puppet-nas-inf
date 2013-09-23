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
