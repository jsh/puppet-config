# /etc/puppet/modules/net/manifests/init.pp

class net {

    package {"libnet1-dev": ensure => installed }

}
