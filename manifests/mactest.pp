node 'mac-test.nas.local' {
#    include osx_management
#    include osx_management::munki_install
    include munkiclient
    include nacs_management
    include nacs_management::install_printers::nhs_copier
    include nacs_management::install_printers::nhs_color
}
