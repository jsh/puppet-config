# /etc/puppet/modules/zip/manifests/init.pp

class zip {
    package {"zip": ensure => installed }
}
