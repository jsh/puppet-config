# /etc/puppet/modules/terminator/manifests/init.pp

class terminator {

    package {"terminator": ensure => installed }

}
