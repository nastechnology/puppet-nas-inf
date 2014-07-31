# CES Cart 2
node /^ces\-cart2\-\d+\.nas\.local/ {
  include roles::nes::cart

  user { 'nmsstudent':
    ensure => 'absent',
  }
}
