class maven3::client {
    include apt
#    include monit::puppet

    package { "maven3":
        ensure => latest,
        notify => Service["maven"],
    }

    # puppet PPA
    case $operatingsystem {
        Ubuntu :  {
            apt::key { "3DD9F856":
                ensure => present,
            }
            apt::sources_list { "natecarlson-maven3.list":
                ensure  => present,
                content => "deb http://ppa.launchpad.net/natecarlson/maven3/ubuntu ${lsbdistcodename} main",
                notify  => Exec["apt-get_update"],
            }
        }
    }
}
