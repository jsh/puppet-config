# /etc/puppet/modules/ntp/manifests/init.pp

class ntp {

    package {"ntp": ensure => installed }
    service {"ntp" : ensure => running }

}
