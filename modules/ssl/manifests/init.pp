# /etc/puppet/modules/ssl/manifests/init.pp

class ssl {

    package {"libssl-dev": ensure => installed }

}
