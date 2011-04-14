# /etc/puppet/manifests/site.pp

import "modules"
import "nodes"

Exec { path => "/usr/sbin:/usr/bin:/sbin:/bin" }
