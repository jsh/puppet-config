class timezone::mountain inherits timezone {
    File["/etc/localtime"] {
        source => "file:///usr/share/zoneinfo/US/Mountain"
    }
}
