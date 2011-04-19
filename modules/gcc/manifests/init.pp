# /etc/puppet/modules/gcc/manifests/init.pp

class gcc {
    package {"gcc": ensure => installed }
}
