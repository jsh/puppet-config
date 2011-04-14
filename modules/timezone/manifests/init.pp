# /etc/puppet/modules/timezone/manifests/init.pp

class timezone {
    package { "tzdata":
        ensure => installed
    }

    file { "/etc/localtime":
        source => "file:///usr/share/zoneinfo/UTC",
        require => Package["tzdata"],
    }
}
