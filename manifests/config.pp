class hostname::config inherits hostname {

	# Generate hostname
	if ($domain) {
		$fqdn = "${hostname}.${domain}"
	} else {
		$fqdn = $hostname
	}

	# Modify the /etc/hostname file content
	file { '/etc/hostname':
		ensure  => present,
		content => "$fqdn\n",
		notify  => Exec['set-hostname'],
	}

	exec { 'set-hostname':
		command => '/bin/hostname -F /etc/hostname',
	}

	# Make sure the hosts file has an entry
	host { $hostname:
		ensure => present,
		name => $fqdn,
		host_aliases => $hostname,
		ip => $::ipaddress,
	}
}