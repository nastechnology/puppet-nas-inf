# West Cart 2

node /^wes\-cart2\-\d+\.nas\.local/ {
  include roles::nes::cart

  user { 'nmsstudent':
    ensure => 'absent',
  }
}
