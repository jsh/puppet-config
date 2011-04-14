class timezone::pacific inherits timezone {
    File["/etc/localtime"] {
        source => "file:///usr/share/zoneinfo/US/Pacific"
    }
}
