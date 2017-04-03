class devopspro-vilnius {
package { 'less'
  ensure => present,
}
  file { '/etc/lessrc':
  ensure => present
  owner  => 'root',
  }
}
