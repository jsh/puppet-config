define user_homedir ($group, $fullname, $ingroups) {
  user { "$name":
    ensure => present,
    comment => "$fullname",
    gid => "$group",
    groups => $ingroups,
    membership => minimum,
    shell => "/bin/bash",
    home => "/home/$name",
    require => Group[$group],
  }

  exec { "$name homedir":
    command => "/bin/cp -R /etc/skel /home/$name; /bin/chown -R $name:$group /home/$name",
    creates => "/home/$name",
    require => User[$name],
  }
}

user_homedir { "jsh":
  group => "jsh",
  fullname => "Jeffrey S. Haemer",
  ingroups => ["sudo", "admin", "cdrom", "dialout", "plugdev", "lpadmin", "sambashare", "adm"],
}

user_homedir { "hudson":
  group => "hudson",
  fullname => "Jenkins",
  ingroups => ["sudo", "admin"],
}
