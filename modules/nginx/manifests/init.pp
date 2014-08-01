# Nginx Install / Start / & Serve Webpages

class nginx {
	
	service { 'httpd':
	ensure => stopped,
	}

	#package { 'httpd':
	#ensure => 'removed',
	#require => Service['httpd'],
	#}

	#package { 'nginx':
	#ensure => installed,
	#require => Package['httpd'],
	#}

	service { 'nginx':
	ensure => 'running',
	}

}
