node 'studentmacnode' {
#  include munkiclient
#  include munkiclient::config
  include nacs_management
  include nacs_management::techspecs
#  include nacs_management::maccheckmngsft
  include nacs_management::scriptrunner

  if ($::mac_laptop == "mac_laptop"){
    #mac_profiles_handler::manage { 'org.nacs.profile':
    #  ensure      => present,
    #  file_source => 'puppet:///modules/nacs_management/org.nacs.profile.mobileconfig',
    #}
  }

  include nacs_management::parcc

  package { 'Firefox-27.0.1.dmg':
    provider => pkgdmg,
    source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2014/02/Firefox-27.0.1.dmg',
    ensure   => installed,
  }

  package { 'AdobeFlashPlayer12.0.0.70':
    provider => pkgdmg,
    #http://www.adobe.com/uk/products/flashplayer/distribution3.html
    #source   => 'http://fpdownload.macromedia.com/get/flashplayer/current/licensing/mac/install_flash_player_12_osx_pkg.dmg',
    source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2014/03/install_flash_player_12_osx_pkg.dmg',
    ensure   => installed,
  }

  #package { 'JavaForOSX2013-05':
  #  provider => pkgdmg,
  #  source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2014/02/JavaForOSX2013-05.dmg',
  #  ensure   => installed,
  #}

  package { 'Java7u51':
    provider => pkgdmg,
    source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2014/02/jre-7u51-macosx-x64.dmg',
    ensure   => installed,
  }

  #exec { 'EnableScreenSharing':
  #  command => '/System/Library/CoreServices/RemoteMangement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -access -off -restart -agent -privs -all -allowAccessFor -allUsers',
  #}
}
