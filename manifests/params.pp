class hostname::params {
	# Define the hostname (without domain) to be used.
	$hostname = $::clientcert

	# Define the domain to be used
	$domain = undef
}