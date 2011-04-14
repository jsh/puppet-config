class timezone::eastern inherits timezone {
    File["/etc/localtime"] {
        source => "file:///usr/share/zoneinfo/US/Eastern"
    }
}
