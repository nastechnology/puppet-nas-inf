node macbasenode {
  include munkiclient
  include nacs_management
  include nacs_management::techspecs
  include nacs_management::maccheckmngsft


  mac_profiles_handler::manage { 'org.nacs.profile':
    ensure => present,
    file_source => 'puppet:///modules/nacs_management/org.nacs.profile.mobileconfig',
  }
}
