#Managing ssh 

class ssh { 
	service { 'sshd':
	ensure => running,
	}

	file { '/etc/ssh/sshd_config':
	source => 'puppet:///modules/ssh/sshd_config',
	notify => Service ['sshd'],
	owner  => 'root',
	group  => 'root',
	}

}
