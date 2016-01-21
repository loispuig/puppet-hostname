# puppet-hostname

#### Table of Contents

1. [Overview](#overview)
2. [Setup - The basics of getting started with dotdeb](#setup)
    * [What dotdeb affects](#what-hostname-does)
    * [Setup requirements](#requirements)
    * [Beginning with dotdeb](#beginning-with-hostname)
3. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Configure a Debian based OS hostname.
Tested on Debian 8 using Puppet 3.7.

## Setup

### What hostname does

* Generate hostname
* Modify the /etc/hostname file content
* Make sure the /etc/hosts file has the related entry

### Requirements

* Debian based OS.
* Puppet >= 3.3.

### Beginning with hostname

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

* manifests/init.pp : Initiate the module, includes parameters and starts the config script.
* manifests/params.pp : Defines used parameters and related default values.
* manifests/config.pp : Configure hostname.

## Limitations

Should work on any Debian based OS. (Debian, Ubuntu...)