node 'nctv-lap3.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'nhs_copier': }
}

node 'nctv-mini2.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'nhs_copier': }
}

node 'nctv-mini1.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'nhs_copier': }
}

node 'nctv-pro1.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'nhs_copier': }
}

node 'nctv-pro2.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'nhs_copier': }
}


node 'nctv-lap2.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'nhs_copier': }
}


node 'nctv-lap4.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'nhs_copier': }
}

node 'nctv-lap5.nas.local' inherits 'macbasenode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'nhs_copier': }
}
