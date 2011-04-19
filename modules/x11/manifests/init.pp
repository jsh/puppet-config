# /etc/puppet/modules/x11/manifests/init.pp

class x11 {
    package {"libx11-dev": ensure => installed }
}
