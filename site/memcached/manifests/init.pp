class memcached {
#package
package { 'memcached':
ensure => present,
}

#config file /etc/sysconfig/memcached
file { '/etc/sysconfig/memcached':
ensure => file,
owner => 'root',
group => 'root',
mode => '0644',
source => 'puppet:///modules/memcached/memcached.cfg',
require => Package['memcached'],
}
#memcahced
service { 'memcached':
ensure => running,
enable => true,
subscribe => File['/etc/sysconfig/memcached'],
}
}
