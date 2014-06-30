# Marks MacBook Pro
node 'nas-tech-tc.nas.local' {
  $user = 'markmyers'

  class { 'roles::staff::tech':
    user => $user,
  }
  printer { 'nhs_131_copier':
    ensure      => present,
    uri         => "lpd://10.20.15.23/nhs_131_copier",
    description => "Guidance Ciopier",
    location    => "NHS Guidance",
    shared      => false,
    ppd         => "/Library/Printers/PPDs/Contents/Resources/en.lproj/Ricoh-Aficio_MP_5001-pxlmono-Ricoh.ppd.gz",
  }
}

# Chris MacBook Professional
node 'nas-tech-st.nas.local' {
  $user = 'chris'

  class { 'roles::staff::tech':
    user => $user,
  }
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
