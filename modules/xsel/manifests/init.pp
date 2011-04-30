# /etc/puppet/modules/xsel/manifests/init.pp

class xsel {
    package {"xsel": ensure => installed }
}
