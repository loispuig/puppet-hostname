# puppet-hostname

#### Table of Contents

1. [Overview](#overview)
2. [Usage](#usage)
5. [Reference](#reference)
5. [Limitations](#limitations)

## Overview

Configure a Debian based OS hostname :

* Generate hostname
* Modify the /etc/hostname file content
* Make sure the /etc/hosts file has the related entry

## Usage

```
include hostname
```

or

```
class { 'hostname':
	hostname => 'myhostname',
	domain   => 'mydomain',
}
```

Default values are

```
$hostname = $::clientcert
$domain = undef
```

## Reference

* manifests/init.pp : Initiates the module, includes parameters and starts the config script.
* manifests/params.pp : Defines used parameters and related default values.
* manifests/config.pp : Configures hostname.

## Limitations

Tested on Debian 8 using Puppet 3.7.  
Should work on any Debian and Ubuntu based OS.  
Puppet >= 3.3 required.