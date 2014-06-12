node 'nhs-lib-0.nas.local' inherits 'winbasenode' {
  include nacs_management::sirsi
}

node 'nhs-lib-1.nas.local' inherits 'winbasenode' {
  include nacs_management::sirsi
}

node 'nhs-lib-aide.nas.local' inherits 'winbasenode' {
  include nacs_management::sirsi
}


node 'nms-lib-0.nas.local' inherits 'winbasenode' {
  include nacs_management::sirsi
  package { 'office2007nooutlook' :
    ensure => installed,
  }
}

node 'nms-lib-1.nas.local' inherits 'winbasenode' {
  include nacs_management::sirsi
  package { 'office2007nooutlook' :
    ensure => installed,
  }
}

node /nms\-lib\-cir\d\.nas\.local/ inherits 'winbasenode' {
  include nacs_management::sirsi
}


node 'wes-lib-0.nas.local' inherits 'winbasenode' {
  include nacs_management::sirsi
}

node 'cdb-lib-0.nas.local' inherits 'winbasenode' {
  include nacs_management::sirsi
}


node 'nhs-studylab-1.nas.local' {
  include roles::base
}

node 'nhs-132-0.nas.local' {
  include roles::base
}

node 'nhs-241-0.nas.local' {
  include roles::base
}

node 'nhs-211-0.nas.local.nas.local' {
  include roles::base
}

