node 'macbasenode' {
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

  package { 'YouTubeDownloader-1.7.dmg':
    provider => pkgdmg,
    source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2013/12/YouTubeDownloader-1.7.dmg',
    ensure   => installed,
  }  

  package { 'Firefox-26.0.dmg':
    provider => pkgdmg,
    source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2013/12/Firefox-26.0.dmg',
    ensure   => installed,
  }

  package { 'AdobeFlashPlayer12.0.0.43':
    provider => pkgdmg,
    source   => 'http://fpdownload.macromedia.com/get/flashplayer/current/licensing/mac/install_flash_player_12_osx_pkg.dmg',
    ensure   => installed,
  }

  package { 'JavaForOSX2013-05':
    provider => pkgdmg,
    source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2014/02/JavaForOSX2013-05.dmg',
    ensure   => installed,
  }
}
