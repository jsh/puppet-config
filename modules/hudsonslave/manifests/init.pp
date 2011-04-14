# /etc/puppet/modules/hudsonslave/manifests/init.pp

class hudsonslave {
    file { "/home/hudson/bin":
        owner   => hudson,
        group   => hudson,
	ensure  => directory,
    }
    file { "/home/hudson/.ssh":
        owner   => hudson,
        group   => hudson,
	ensure  => directory,
    }
    file { "/home/hudson/bin/hudson.sh":
        owner   => hudson,
        group   => hudson,
        mode    => 755,
        source  => "puppet:///modules/hudsonslave/bin/hudson.sh",
    }
    file { "/home/hudson/bin/slave.jar":
        owner   => hudson,
        group   => hudson,
        mode    => 755,
        source  => "puppet:///modules/hudsonslave/bin/slave.jar",
    }
    file { "/home/hudson/.ssh/authorized_keys":
        owner   => hudson,
        group   => hudson,
        mode    => 600,
        source  => "puppet:///modules/hudsonslave/.ssh/authorized_keys",
    }
}
