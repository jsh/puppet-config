# /etc/puppet/modules/gperf/manifests/init.pp

class gperf {
    package {"gperf": ensure => installed }
}
