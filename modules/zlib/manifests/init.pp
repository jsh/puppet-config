# /etc/puppet/modules/zlib/manifests/init.pp

class zlib {
    package {"zlib1g-dev": ensure => installed }
}
