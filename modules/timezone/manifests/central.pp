class timezone::central inherits timezone {
    File["/etc/localtime"] {
        source => "file:///usr/share/zoneinfo/US/Central",
    }
}
