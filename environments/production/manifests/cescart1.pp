# CES Cart 1
node /^ces\-cart1\-\d+\.nas\.local/ {
  include roles::nes::cart

  user { 'nmsstudent':
    ensure => 'absent',
  }
}
