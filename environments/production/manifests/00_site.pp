

if $::operatingsystem == 'windows' {
  Exec { path => [ 'C:/', 'C:/Windows/System32/', 'C:/Windows/', 'C:/Chocolatey/bin', 'C:/NACSManage', 'C:/Windows/System32/WindowsPowerShell/v1.0' ] }
} else {
  Exec { path => [ '/usr/bin', '/usr/local/bin'] }
}
