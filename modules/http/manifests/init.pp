#Install and manage Apache webserver // Doing it Alone

class http {
	package { 'httpd':
	ensure => installed,
	}		
	
	service { 'httpd':
	ensure => running,
	}	

	file { '/etc/httpd/httpd.conf':
	content => template ('http/vhost.conf.erb'),
	notify => Service['httpd'],
	}	
}

