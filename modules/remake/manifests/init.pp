# /etc/puppet/modules/remake/manifests/init.pp

class remake {
    package {"remake": ensure => installed }
}
