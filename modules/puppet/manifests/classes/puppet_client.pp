class puppet::client {
    include apt
#    include monit::puppet

    package { "puppet":
        ensure => latest,
        notify => Service["puppet"],
    }

    package { "facter":
        ensure => latest,        notify => Service["puppet"],
     }

#    file { "/etc/puppet/auth.conf":
#        source  => "puppet:///modules/puppet/auth.conf",
#        owner   => "puppet",
#        group   => "puppet",
#        mode    => "640",
#        notify  => Service["puppet"],
#        require => [Package["puppet"], Package["facter"]],
#    }
#
#    file { "/etc/puppet/namespaceauth.conf":
#        source  => "puppet:///modules/puppet/namespaceauth.conf",
#        owner   => "puppet",
#        group   => "puppet",
#        mode    => "640",
#        notify  => Service["puppet"],
#        require => [Package["puppet"], Package["facter"]],
#    }
#
#    file { "/etc/puppet/puppet.conf":
#        source  => "puppet:///modules/puppet/puppet.conf",
#        owner   => "puppet",
#        group   => "puppet",
#        mode    => "640",
#        notify  => Service["puppet"],
#        require => [Package["puppet"], Package["facter"]],
#    }
#
#    file { "/etc/default/puppet":
#        source  => "puppet:///modules/puppet/puppet",
#        owner   => "puppet",
#        group   => "puppet",
#        mode    => "640",
#        notify  => Service["puppet"],
#        require => [Package["puppet"], Package["facter"]],
#    }

    service { "puppet":
        ensure     => running,
        enable     => true,
        hasstatus  => true,
        hasrestart => true,
    }

    # puppet PPA
    case $operatingsystem {
        Ubuntu :  {
            apt::key { "AFF68B78":
                ensure => present,
            }
            apt::sources_list { "aroth-puppet.list":
                ensure  => present,
                content => "deb http://ppa.launchpad.net/aroth/ppa/ubuntu ${lsbdistcodename} main",
                notify  => Exec["apt-get_update"],
            }
        }
    }
}
