#node 'puppetmaster' {
#	file { '/tmp/testing':
#	content => "This is testing\n",
#	ensure 	=> present,
#	}
#}

#node 'puppetmaster' {
#	 package { 'nginx':
#	 ensure  => installed,
#	}
#}

node 'puppetmaster' {

	include nginx
	include file-sample
	include htop-install
}
#	class { 'ntp':
#	server => 'us.pool.ntp.org',
#	}

#	file { '/var/www/cat-pictures':
#	ensure => directory,
#	}
#	file { '/var/www/cat-pictures/img':
#		source => 'puppet:///modules/cat-pictures/img',
#		recurse=> 'true',
#		require=> File['/var/www/cat-pictures'],
#		}
#	include nginx
#	$site_name = 'cat-pictures'
#	$site_domain = 'cat-pictures.com'
#	file { '/etc/nginx/site-enabled/cat-pictures.conf':
#	content => template('nginx/vhost.conf.erb'),
#	notify => Service['nginx'],
#	}
#	
#	nginx::website {'adorable-animals':
#	site_domain => 'adorable-animals.com',
#	}
#}


#	cron { 'backup cat-picture':
#	command => '/usr/bin/rsync -az /var/www/cat-pictures/ /cat-pictures-backup',
#	hour    => '04',
#	minute  => '00',
#	}

	#include nginx
	#include git	
	#include ssh	
	#include sudoers
	#include wget
		#exec { 'Run my arbitary command':
		#   command => '/bin/echo I ran this command on `/bin/date` >/tmp/command.output.txt'
		 #    }'

#node 'puppetmaster' {

#  user 	{ 'ajesh':
#    ensure      => present,
#    comment     => "Ajesh Binoy",
#    home        => '/home/ajesh',
#    managehome => true,
#    }

#	ssh_authorized_key { 'ajesh_ssh':
#	user => 'ajesh',
#	type => 'rsa',
#	key  => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA0CNC/N5pGUJqEtKJW902uou99in3mkvyMa+MaSFGqhaZTYlvUETIAwxN1YpWGWA9KwEW0GXDMOLl9CpKASTfTb/ZDUNinz5L+qQUT1u/U3NS9lZH+NCDAmSlcfVgoukUr5y6VvzzkNTOhWn1pePImM4ELd/DZdvNI4ZYdAalaJYhgkUluBawDADoux3arNxEITaz+wpks86IvFiYpybuSw17lvAIop1JFfiswhU6A04CjHklnUfbKVThT95AP+P02OyW+odVSgZEZ7Te7rgXPoT7VdMPUMA/hTrlYm/LQyZEA2FrEBzVMWRCKITxuPzg4Tgj4YA7sMA9ub1jpFoBTw=',
#	}

#}


