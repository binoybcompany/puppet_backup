# Wget Request

class wget {
	exec { 'Download public key for Bins':
	cwd => '/tmp',
	command => '/usr/bin/wget https://epub-samples.googlecode.com/files/mymedia_lite-20130621.epub',
	creates => '/tmp/bins.epub',
}
}
