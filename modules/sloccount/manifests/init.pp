# /etc/puppet/modules/tree/manifests/init.pp

class sloccount {

    package {"sloccount": ensure => installed }

}
