#file { '/tmp/hello':
#	ensure => present,
#	content => "Fuck you make this work\n",
#}

#file { '/etc/motd':
#	ensure => present,
#	content => "This is a fucking funny message\n",
#}

import 'nodes.pp'

Exec { 
	path => ['/bin', '/usr/bin' ],
}
