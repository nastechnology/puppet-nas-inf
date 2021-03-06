# Marks MacBook Pro
node 'nas-tech-tc.nas.local' {
  $user = 'markmyers'

  class { 'roles::staff::tech':
    user => $user,
  }

  class { 'tmutil':
    user     => 'markmyers',
    password => 'backup',
    server   => 'xserve.nacswildcats.org',
    share    => 'nas-tech-tc',
  }

  nacs_management::printers{'nhs_131_copier': }
  nacs_management::printers{ 'nhs_wkrm_copier': }
}

# Justin MacBook Professional
node 'nas-tech-st.nas.local' {
  $user = 'justinyant'

  class { 'roles::staff::tech':
    user => $user,
  }

  nacs_management::printers{'nhs_131_copier': }
}

node 'tech-dev-mini.nas.local' {
  include nacs_management
  include nacs_management::techspecs
  #include munkiclient
  #include munkiclient::config
  #include nacs_management::maccheckmngsft

  class { 'nacs_management::allprinters': }

  nacs_management::printers{'nhs_copier': }
  nacs_management::printers{ 'ces_office_copier': }

}
