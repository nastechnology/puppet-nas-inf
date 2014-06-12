node 'teachersmacnode' inherits 'macbasenode' {
  nacs_management::wireless{ 'teachers': }

  #augeas { 'puppet.conf.migrate':
  #  context => '/files/etc/puppet/puppet.conf/main',
  #  changes => ["set server puppet.nacswildcats.org",]
  #}
}
