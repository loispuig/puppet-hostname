class hostname (
	$hostname = $hostname::params::hostname,
	$domain   = $hostname::params::domain,
) inherits hostname::params {

	anchor { 'hostname::begin': } ->
		class { '::hostname::config': } ->
	anchor { 'hostname::end': }
}
