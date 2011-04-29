# /etc/puppet/modules/build-essential/manifests/init.pp

class build-essential {
    package {"build-essential": ensure => installed }
}
