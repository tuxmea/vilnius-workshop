class devopspro_vilnius (
  $validate = false,
){
  package { 'less':
    ensure => present,
  }
  file { '/etc/lessrc':
    ensure => present,
    owner  => 'root',
    source => "puppet:///modules/devopspro_vilnius/lessrc.${::osfamily}",
  }
  if $validate {
    notify { 'validation enabled': }
  }
}
