class ntp {
    package { "ntp": 
        ensure => installed 
    }

    service { "ntp":
        ensure => running,
    }
    file {
        "/etc/ntp.conf":
            ensure => present,
            owner => root,
            group => root,
            mode => 0644,
            source => "puppet:///modules/ntp/ntp.conf",
            notify => Service["ntp"];
        "/etc/default/ntp":
            ensure => present,
            owner => root,
            group => root,
            mode => 0644,
            source => "puppet:///modules/ntp/ntp",
            notify => Service["ntp"];
    }
}

