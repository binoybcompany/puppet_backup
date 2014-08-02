#Manage the Nginx webserver

class nginx {
	package { 'nginx':
	ensure => installed,
	}

	service { 'nginx':
	ensure => running,
	enable => true,
	require => Package ['nginx'],
	}
	
	file { '/etc/nginx/site-enabled/default':
	ensure => absent,
	}
	
	file { '/etc/nginx/site-enabled/default':
	ensure => present,
	source => 'puppet:///modules/nginx/cat-pictures.conf',
	notify => Service ['nginx'],
	}
}



