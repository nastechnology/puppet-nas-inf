# DHCP SERVER configuration
node 'dhcp.nas.local' {
  include dhcp::server

  class { 'apache':
    mpm_module => 'prefork'
  }

  class { 'apache::mod::php': }
  apache::mod { 'rewrite': }


  #BOE Conf TS Client
  dhcp::server::host {'board-ts':
    address     => '10.20.8.10',
    hwaddress   => '00:27:0e:0f:12:63',
    filename    => 'pro/4.6.9/wtware.pxe',
    next_server => '10.20.14.64',
  }


  #Administrative VLAN
  dhcp::server::subnet { '10.20.8.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.8.1',
    broadcast   => '10.20.8.255',
    range_begin => '10.20.8.100',
    range_end   => '10.20.8.200',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }


  #NAS-IT-01
  dhcp::server::host { 'nas-it-01':
    address   => '10.20.8.5',
    hwaddress => '00:50:56:a0:00:16',
  }

  #NAS-IT-02
  dhcp::server::host { 'nas-it-02':
    address   => '10.20.8.6',
    hwaddress => '00:50:56:a0:00:15',
  }

  # Wifi Management
  dhcp::server::subnet { '10.20.9.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.9.1',
    broadcast   => '10.20.9.255',
    range_begin => '10.20.9.100',
    range_end   => '10.20.9.200',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    other_opts  => 'option ubnt.unifi-address 10.20.2.50',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #HS Staff
  dhcp::server::subnet { '10.20.10.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.10.1',
    broadcast   => '10.20.10.255',
    range_begin => '10.20.10.20',
    range_end   => '10.20.10.250',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #HS Teachers
  dhcp::server::subnet { '10.20.11.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.11.1',
    broadcast   => '10.20.11.255',
    range_begin => '10.20.11.50',
    range_end   => '10.20.11.250',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #NAS-UBIQUITI
  dhcp::server::host {'nas-ubiquiti':
    address   => '10.20.11.46',
    hwaddress => '00:50:56:a0:00:28',
  }


  #HS Maintenance
  dhcp::server::subnet { '10.20.12.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.12.1',
    broadcast   => '10.20.12.255',
    range_begin => '10.20.12.100',
    range_end   => '10.20.12.200',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #HS Students
  dhcp::server::subnet { '10.20.13.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.13.1',
    broadcast   => '10.20.13.255',
    range_begin => '10.20.13.10',
    range_end   => '10.20.13.200',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #HS Student Proctor Cache
  dhcp::server::host { 'nhs-proctorcache-1':
    address   => '10.20.13.3',
    hwaddress => '00:50:56:a0:00:1f',
  }


  #HS Labs
  dhcp::server::subnet { '10.20.14.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.14.1',
    broadcast   => '10.20.14.255',
    range_begin => '10.20.14.11',
    range_end   => '10.20.14.250',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
    other_opts  => ['default-lease-time 86400', 'max-lease-time 604800'],
  }

  #
  ##HS Lab TS Clients
  #

  #NHS AUX  TS Client 1
  dhcp::server::host {'nhs-auxts-1':
    address     => '10.20.14.70',
    hwaddress   => '70:71:bc:43:e5:19',
    #filename    => 'pro/4.6.1/pxelinux.0',
    next_server => '10.20.14.61',
  }

  #NHS AUX  TS Client 3
  dhcp::server::host {'nhs-auxts-3':
    address     => '10.20.14.72',
    hwaddress   => '00:27:0e:0f:12:57',
    #filename    => 'pro/4.6.1/pxelinux.0',
    next_server => '10.20.14.61',
  }

  #NHS AUX  TS Client 4
  dhcp::server::host {'nhs-auxts-4':
    address     => '10.20.14.73',
    hwaddress   => '00:27:0e:0f:12:39',
    filename    => 'pro/4.6.1/pxelinux.0',
    next_server => '10.20.14.61',
  }

  #NHS AUX  TS Client 5
  dhcp::server::host {'nhs-auxts-5':
    address     => '10.20.14.74',
    hwaddress   => '00:27:0e:0f:12:61',
    filename    => 'pro/4.6.1/pxelinux.0',
    next_server => '10.20.14.61',
  }

  #NHS AUX  TS Client 6
  dhcp::server::host {'nhs-auxts-6':
    address     => '10.20.14.75',
    hwaddress   => '00:27:0e:0f:12:65',
    filename    => 'pro/4.6.1/pxelinux.0',
    next_server => '10.20.14.61',
  }

  #NHS AUX  TS Client 7
  dhcp::server::host {'nhs-auxts-7':
    address     => '10.20.14.76',
    hwaddress   => '00:27:0e:0f:12:6e',
    filename    => 'pro/4.6.1/pxelinux.0',
    next_server => '10.20.14.61',
  }

  #NHS AUX  TS Client 8
  dhcp::server::host {'nhs-auxts-8':
    address     => '10.20.14.77',
    hwaddress   => '70:71:bc:43:e7:4d',
    filename    => 'pro/4.6.1/pxelinux.0',
    next_server => '10.20.14.61',
  }

  #NHS AUX  TS Client 10
  dhcp::server::host {'nhs-auxts-10':
    address     => '10.20.14.79',
    hwaddress   => '00:27:0e:0f:12:6a',
    filename    => 'pro/4.6.1/pxelinux.0',
    next_server => '10.20.14.61',
  }

  #HS Printers
  dhcp::server::subnet { '10.20.15.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.15.1',
    broadcast   => '10.20.15.255',
    range_begin => '10.20.15.195',
    range_end   => '10.20.15.199',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #
  ##BUS Printers
  #

  #BUS Office - Copier
  dhcp::server::host {'bus-office':
    address   => '10.20.12.111',
    hwaddress => '00:00:74:c4:06:d9',
  }

  #BUS Office - Color
  dhcp::server::host {'bus-color':
    address   => '10.20.12.112',
    hwaddress => '00:c0:ee:42:1c:38',
  }

  #
  ##End BUS Printers
  #

  #HS Wireless
  dhcp::server::subnet { '10.20.16.0':
    netmask     => '255.255.252.0',
    routers     => '10.20.16.1',
    broadcast   => '10.20.19.255',
    range_begin => '10.20.16.10',
    range_end   => '10.20.19.250',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  # HS Room 215 Apple TV
  dhcp::server::host { 'Room215':
    address   => '10.20.16.2',
    hwaddress => '9c:20:7b:d4:66:46',
  }

  # HS Room 241 Apple TV
  dhcp::server::host { 'ROOM241':
    address   => '10.20.16.3',
    hwaddress => '9c:20:7b:c9:36:dd',
  }

  #Chris Work Mac
  dhcp::server::host {'chris-work-mac.nas.local':
    address   => '10.20.18.12',
    hwaddress => 'b8:e8:56:36:ed:04',
  }

# NHS Skype Users

  # Lori Drewes Mac
  dhcp::server::host {'nhs-mac-06003.nas.local':
    address   => '10.20.18.28',
    hwaddress => 'a8:bb:cf:18:3a:00',
  }

  # Brian Wolfe Mac
  dhcp::server::host {'nhs-mac-06073.nas.local':
    address   => '10.20.18.18',
    hwaddress => 'a8:bb:cf:18:6a:4a',
  }

  # Brock Dishop Mac
  dhcp::server::host {'nhs-mac-06006.nas.local':
    address   => '10.20.18.53',
    hwaddress => 'a8:bb:cf:18:61:82',
  }

  # Rebecca Seigneur Mac
  dhcp::server::host {'nhs-mac-06010.nas.local':
    address   => '10.20.17.171',
    hwaddress => 'a8:bb:cf:1d:bc:0a',
  }

  # Jenna Storrer Mac
  dhcp::server::host {'nhs-mac-06187.nas.local':
    address   => '10.20.19.11',
    hwaddress => 'a8:bb:cf:18:56:96',
  }

# End NHS skype users

  #MS Staff
  dhcp::server::subnet { '10.20.20.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.20.1',
    broadcast   => '10.20.20.255',
    range_begin => '10.20.20.20',
    range_end   => '10.20.20.250',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }


  #MS Teachers
  dhcp::server::subnet { '10.20.21.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.21.1',
    broadcast   => '10.20.21.255',
    range_begin => '10.20.21.50',
    range_end   => '10.20.21.250',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }


  #MS Maintenance
  dhcp::server::subnet { '10.20.22.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.22.1',
    broadcast   => '10.20.22.255',
    range_begin => '10.20.22.100',
    range_end   => '10.20.22.200',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }


  #MS Students
  dhcp::server::subnet { '10.20.23.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.23.1',
    broadcast   => '10.20.23.255',
    range_begin => '10.20.23.100',
    range_end   => '10.20.23.200',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }


  #MS Labs
  dhcp::server::subnet { '10.20.24.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.24.1',
    broadcast   => '10.20.24.255',
    range_begin => '10.20.24.10',
    range_end   => '10.20.24.200',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  dhcp::server::host { 'nms-proctorcache-2':
    address   => '10.20.24.3',
    hwaddress => '00:50:56:a0:00:29',
  }

  #
  ##MS Printers
  #

  #MS Main Copier
  #dhcp::server::host {'nms-office-copier':
  # address => '10.20.25.120',
  # hwaddress => “00:00:74:c4:06:ba',
  #}



  #MS - Office Color
  #dhcp::server::host { “MS-OFFICE-COLOR':
  # address => “10.20.25.121',
  # hwaddress => “00:c0:ee:56:85:e0';
  #}

  #MS - Office BW
  #dhcp::server::host {“MS-OFFICE-BW':
  # address => “10.20.25.122',
  # hwaddress => “00:11:0a:f1:bc:41';
  #}

  #
  ##End MS Printers
  #

  #MS Wireless
  dhcp::server::subnet { '10.20.26.0':
    netmask     => '255.255.254.0',
    routers     => '10.20.26.1',
    broadcast   => '10.20.26.255',
    range_begin => '10.20.26.10',
    range_end   => '10.20.27.254',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    other_opts  => 'option ubnt.unifi-address 10.20.2.50',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #MS Cameras
  dhcp::server::host {'nms-camera1':
    address   => '10.20.26.5',
    hwaddress => '00:27:22:60:99:1b',
  }

  #MS Camera 2
  dhcp::server::host {'nms-camera2':
    address   => '10.20.26.6',
    hwaddress => '00:27:22:60:98:75',
  }

  #MS Camera 3
  dhcp::server::host {'nms-camera3':
    address   => '10.20.26.7',
    hwaddress => '00:27:22:60:99:4b',
  }

  #MS 6th Grade Camera on CES Network
  dhcp::server::host {'nms-camera4':
    address   => '10.20.26.8',
    hwaddress => '00:27:22:60:50:fe',
  }


  #MS Ubiquiti Server
  dhcp::server::host {'nms-uquiti':
    address   => '10.20.26.2',
    hwaddress => '00:11:11:59:19:f6',
  }


  #CES Staff
  dhcp::server::subnet { '10.20.30.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.30.1',
    broadcast   => '10.20.30.255',
    range_begin => '10.20.30.100',
    range_end   => '10.20.30.200',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #CES VTerm
  dhcp::server::host{'ces-vterm':
    address   => '10.20.30.50',
    hwaddress => '00:13:72:c0:75:d4',
  }

  #CES Teachers
  dhcp::server::subnet { '10.20.31.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.31.1',
    broadcast   => '10.20.31.255',
    range_begin => '10.20.31.100',
    range_end   => '10.20.31.200',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }


  #CES Maint
  dhcp::server::subnet { '10.20.32.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.32.1',
    broadcast   => '10.20.32.255',
    range_begin => '10.20.32.100',
    range_end   => '10.20.32.200',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #CES Students
  dhcp::server::subnet { '10.20.33.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.33.1',
    broadcast   => '10.20.33.255',
    range_begin => '10.20.33.80',
    range_end   => '10.20.33.250',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #
  #CES/NMS Basement workroom copier
  dhcp::server::host { 'cesnms-7500':
    address   => '10.20.33.10',
    hwaddress => '00:26:73:37:25:7D',
  }

  #
  #CES KG Color Printer
  dhcp::server::host { 'ces_kg_colorlaser':
    address   => '10.20.33.11',
    hwaddress => '00:c0:ee:8b:19:27',
  }

  #
  #CES/NMS (Mossing)
  dhcp::server::host {'nms-C2XX-3':
    address     => '10.20.33.56',
    hwaddress   => '00:11:11:59:2b:22',
    filename    => 'pro/4.6.1/pxelinux.0',
    next_server => '10.20.34.10',
  }


  #
  #CES 206 station 3 (Cordy)
  dhcp::server::host {'ces-206-3':
    address     => '10.20.33.50',
    hwaddress   => '00:07:e9:57:57:24',
    filename    => 'pro/4.6.1/pxelinux.0',
    next_server => '10.20.34.10',
  }

  #
  #CES 206 station 2 (Cordy)
  dhcp::server::host {'ces-206-2':
    address     => '10.20.33.51',
    hwaddress   => '00:11:11:83:fc:ee',
    filename    => 'pro/4.6.1/pxelinux.0',
    next_server => '10.20.34.10',
  }

  #
  #CES 205 station 2 (BOyer)
  dhcp::server::host {'ces-205-2':
    address     => '10.20.33.52',
    hwaddress   => '00:07:e9:57:0b:60',
    filename    => 'pro/4.6.1/pxelinux.0',
    next_server => '10.20.34.10',
  }

  #
  #CES 206 station 1 (Boyer)
  dhcp::server::host {'ces-205-1':
    address     => '10.20.33.53',
    hwaddress   => '00:07:e9:57:0b:3f',
    filename    => 'pro/4.6.1/pxelinux.0',
    next_server => '10.20.34.10',
  }

  #
  #CES 204 station 2 (Rosebrock)
  dhcp::server::host {'ces-204-2':
    address     => '10.20.33.54',
    hwaddress   => '00:11:11:1d:38:27',
    filename    => 'pro/4.6.1/pxelinux.0',
    next_server => '10.20.34.10',
  }

  #
  #CES 204 station 3 (Rosebrock)
  dhcp::server::host {'ces-204-3':
    address     => '10.20.33.55',
    hwaddress   => '00:11:11:59:2b:31',
    filename    => 'pro/4.6.1/pxelinux.0',
    next_server => '10.20.34.10',
  }


  #CES Labs
  dhcp::server::subnet { '10.20.34.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.34.1',
    broadcast   => '10.20.34.255',
    range_begin => '10.20.34.84',
    range_end   => '10.20.34.254',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #
  ##CES Printers
  #

  #CES Office - 600 Copier
  dhcp::server::host {'ces-office':
    address   => '10.20.35.254',
    hwaddress => '00:50:aa:26:f9:d7';
  }

  #CES Workroom - Rm 114 601 Copier
  dhcp::server::host {'ces-workroom':
    address   => '10.20.35.253',
    hwaddress => '00:50:aa:28:64:ac';
  }

  #CES Workroom - Rm 214 Upstairs 601 Copier
  dhcp::server::host {'ces-upstairs-wkrm':
    address   => '10.20.35.252',
    hwaddress => '00:50:aa:28:64:56';
  }

  #
  ##End CES Printers
  #

  #CES Wireless
  dhcp::server::subnet { '10.20.36.0':
    netmask     => '255.255.254.0',
    routers     => '10.20.36.1',
    broadcast   => '10.20.36.255',
    range_begin => '10.20.36.20',
    range_end   => '10.20.37.254',
    filename    => 'undionly.kpxe',
    other_opts  => 'option ubnt.unifi-address 10.20.2.50',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  # CES 206 Apple TV
  dhcp::server::host { 'CES206':
    address   => '10.20.36.5',
    hwaddress => 'b8:78:2e:57:e5:be',
  }

  # CES 104 Apple TV
  dhcp::server::host { 'CES104':
    address   => '10.20.36.6',
    hwaddress => 'B8:78:2E:4D:50:0C',
  }


  #WES Staff
  dhcp::server::subnet { '10.20.40.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.40.1',
    broadcast   => '10.20.40.255',
    range_begin => '10.20.40.100',
    range_end   => '10.20.40.200',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #WES Camera
  dhcp::server::host { 'wes-camera':
    address   => '10.20.40.5',
    hwaddress => '00:27:22:60:90:f2',
  }


  #WES ViewWise Machine
  dhcp::server::host { 'VTERM-WES':
    address   => '10.20.40.50',
    hwaddress => '00:16:76:05:42:06';
  }

  #WES Teachers
  dhcp::server::subnet { '10.20.41.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.41.1',
    broadcast   => '10.20.41.255',
    range_begin => '10.20.41.100',
    range_end   => '10.20.41.200',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #WES Maint.
  dhcp::server::subnet { '10.20.42.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.42.1',
    broadcast   => '10.20.42.255',
    range_begin => '10.20.42.100',
    range_end   => '10.20.42.200',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #WES Students
  dhcp::server::subnet { '10.20.43.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.43.1',
    broadcast   => '10.20.43.255',
    range_begin => '10.20.43.10',
    range_end   => '10.20.43.250',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #WES Labs
  dhcp::server::subnet { '10.20.44.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.44.1',
    broadcast   => '10.20.44.255',
    range_begin => '10.20.44.10',
    range_end   => '10.20.44.200',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #
  ##WES Printers
  #

  #WES Office
  dhcp::server::host {'Wes-office':
    address   => '10.20.45.122',
    hwaddress => '00:50:aa:29:21:13';
  }

  #WES Workroom
  dhcp::server::host {'wes-wkrm-color':
    address   => '10.20.45.123',
    hwaddress => '00:c0:ee:78:67:c3';
  }


  #WES Workroom
  dhcp::server::host {'wes-wkrm-copier':
    address   => '10.20.45.124',
    hwaddress => '00:00:74:b0:a5:29';
  }

  #
  ##End WES Printers
  #

  #WES Wireless
  dhcp::server::subnet { '10.20.46.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.46.1',
    broadcast   => '10.20.46.255',
    range_begin => '10.20.46.10',
    range_end   => '10.20.46.250',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    other_opts  => 'option ubnt.unifi-address 10.20.2.50',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #CDB Staff
  dhcp::server::subnet { '10.20.50.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.50.1',
    broadcast   => '10.20.50.255',
    range_begin => '10.20.50.100',
    range_end   => '10.20.50.200',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #CDB Teachers
  dhcp::server::subnet { '10.20.51.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.51.1',
    broadcast   => '10.20.51.255',
    range_begin => '10.20.51.100',
    range_end   => '10.20.51.200',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #CDB Maint.
  dhcp::server::subnet { '10.20.52.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.52.1',
    broadcast   => '10.20.52.255',
    range_begin => '10.20.52.100',
    range_end   => '10.20.52.200',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #CDB Students
  dhcp::server::subnet { '10.20.53.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.53.1',
    broadcast   => '10.20.53.255',
    range_begin => '10.20.53.10',
    range_end   => '10.20.53.210',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

  #CDB Labs
  dhcp::server::subnet { '10.20.54.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.54.1',
    broadcast   => '10.20.54.255',
    range_begin => '10.20.54.100',
    range_end   => '10.20.54.200',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }

#
##CDB Printers
#

  #CDB Office - Color
# dhcp::server::host {'cdb-office':
#   address   => “10.20.55.120',
#   hwaddress => “00:c0:ee:48:82:4c';
# }

  #CDB - Workroom main
# dhcp::server::host {“cdb-wkrm':
#   address   => “10.20.55.121',
#   hwaddress => “00:00:74:b0:a5:2f';
# }

  #CDB - Workroom Color
#  dhcp::server::host {“cdb-wkrm-colorlaser':
#    address   => “10.20.55.122',
#    hwaddress => “00:c0:ee:42:1d:7f';
#  }

  #CDB - Workroom copier
#  dhcp::server::host {“cdb-wkrm-copier':
#    address   => “10.20.55.123',
#    hwaddress => “00:c0:ee:73:de:f6';
#  }

#
##End CDB Printers
#

  #CDB Wireless
  dhcp::server::subnet { '10.20.56.0':
    netmask     => '255.255.255.0',
    routers     => '10.20.56.1',
    broadcast   => '10.20.56.255',
    range_begin => '10.20.56.10',
    range_end   => '10.20.56.250',
    filename    => 'undionly.kpxe',
    next_server => '10.20.2.35',
    other_opts  => 'option ubnt.unifi-address 10.20.2.50',
    domain_name => 'nas.local',
    dns_servers => ['10.20.15.26', '10.20.15.48', '10.20.15.25'],
  }
}
