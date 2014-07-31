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
    ensure   => installed,
    provider => pkgdmg,
    source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2013/12/YouTubeDownloader-1.7.dmg',
  }

  package { 'Firefox-31.0.dmg':
    ensure   => installed,
    provider => pkgdmg,
    source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2014/07/Firefox-31.0.dmg',
  }

  package { 'AdobeFlashPlayer14.0.0.125':
    ensure   => installed,
    provider => pkgdmg,
    #source => 'http://fpdownload.macromedia.com/get/flashplayer/current/licensing/mac/install_flash_player_13_osx_pkg.dmg',
    source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2014/06/install_flash_player_14_osx_pkg.dmg',
  }

  package { 'Silverlight5.1.30317.0':
    provider => pkgdmg,
    source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2014/04/Silverlight.dmg',
    ensure   => installed,
  }

  package { 'ShockwavePlayer12.0':
    ensure   => installed,
    provider => pkgdmg,
    source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2014/03/Shockwave_Installer_Full_64bit.dmg',
  }

  package { 'JavaRuntime8.05':
    ensure   => installed,
    provider => pkgdmg,
    source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2014/04/jre-8u5-macosx-x64.dmg',
  }

}
