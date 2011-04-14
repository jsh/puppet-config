# /etc/puppet/modules/maven/manifests/init.pp

class maven2 {

    package {"maven2": ensure => installed }

}
