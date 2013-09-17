node macbasenode {
  include munkiclient
  include maccheckmngsft
#    include macrmfromloginscr
#    include nacs_mac_management
  include nacs_management
  include nacs_management::techspecs


#  mac_profiles_handler::manage { 'org.nacs.profile':
#    ensure => present,
#    file_source => 'puppet:///modules/nacs_mac_management/org.nacs.profile.mobileconfig',
#  }
}
