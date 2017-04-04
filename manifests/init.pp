class devopspro-vilnius (
  $validate = false,
){
package { 'less'
  ensure => present,
}
  file { '/etc/lessrc':
  ensure => present
  owner    => 'root',
  source => 'puppet:///modules/devopspro-vilnius/lessrc.${::facts['os']['family']}',
}
if $validate {
notify { 'validation enabled': }
}
}
