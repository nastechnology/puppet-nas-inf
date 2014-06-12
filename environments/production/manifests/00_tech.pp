# Marks MacBook Pro
node 'nas-tech-tc.nas.local' inherits 'staffmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'boe_copier': }
  nacs_management::printers { 'ces_wkrm': }
  nacs_management::printers { 'ces_upstairs_wkrm': }

  nacs_management::printers { 'cdb_wkrm_copier': }

#  nacs_management::printers { 'nhs_wkrm_copier': }
  nacs_management::printers { 'nhs_wkrm_copier_2': }
  nacs_management::printers { 'hs_stafflounge': }

  include nacs_management::checkin

  printer { 'NHS_WKRM_COPIER1':
    ensure      => present,
    uri         => 'ipp://10.20.2.9/printers/NHS_WKRM_COPIER1',
    description => 'NHS WKRM Copier1',
    location    => 'NHS 231',
    shared      => false,
  }
}

# Chris MacBook Professional
node 'nas-tech-st.nas.local' inherits 'staffmacnode' {
  class { 'nacs_management::allprinters': }
  nacs_management::printers { 'boe_copier': }

  nacs_management::printers { 'wes_wkrm_copier': }

  nacs_management::printers { 'nhs_wkrm_copier': }
  nacs_management::printers { 'nhs_wkrm_copier_2': }

  nacs_management::printers { 'nms_office_copier': }

  nacs_management::printers { 'ces_office_copier': }
}
