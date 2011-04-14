# /etc/puppet/modules/tree/manifests/init.pp

class tree {

    package {"tree": ensure => installed }

}
