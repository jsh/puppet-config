# /etc/puppet/modules/eclipse/manifests/init.pp

class eclipse {
    package {"eclipse": ensure => installed }
}
