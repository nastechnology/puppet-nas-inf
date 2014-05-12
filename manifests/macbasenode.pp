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

  package { 'Firefox-29.0.1.dmg':
    provider => pkgdmg,
    source => 'http://tech.napoleonareaschools.org/wp-content/uploads/2014/05/Firefox-29.0.1.dmg',
    ensure => installed,
  }

  package { 'AdobeFlashPlayer13.0.0.206':
    provider => pkgdmg,
    #source => 'http://fpdownload.macromedia.com/get/flashplayer/current/licensing/mac/install_flash_player_13_osx_pkg.dmg',
    source => 'http://tech.napoleonareaschools.org/wp-content/uploads/2014/04/install_flash_player_13_osx_pkg.dmg',
    ensure => installed,
  }

  package { 'Silverlight5.1.30317.0':
    provider => pkgdmg,
    source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2014/04/Silverlight.dmg',
    ensure   => installed,
  }

  package { 'ShockwavePlayer12.0':
    provider => pkgdmg,
    source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2014/03/Shockwave_Installer_Full_64bit.dmg',
    ensure   => installed,
  }

  package { 'JavaRuntime8.05':
    provider => pkgdmg,
    source   => 'http://tech.napoleonareaschools.org/wp-content/uploads/2014/04/jre-8u5-macosx-x64.dmg',
    ensure   => installed,
  }

}
