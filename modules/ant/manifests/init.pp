# /etc/puppet/modules/ant/manifests/init.pp

class ant {
    package {"ant1.8": ensure => installed }
}
