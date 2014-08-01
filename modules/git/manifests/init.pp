class git {
	package { 'git':
	ensure => installed,	
	}

	#service { 'git':
	#ensure => running,
	#require => Package ['git'],
	#}	
}
	

