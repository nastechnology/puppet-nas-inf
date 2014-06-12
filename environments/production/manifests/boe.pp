# Ruth Niese
node 'boe-emis.nas.local' {
  $user = '9909042'

  class { 'roles::staff::boe::emis':
    user => $user,
  }
}
