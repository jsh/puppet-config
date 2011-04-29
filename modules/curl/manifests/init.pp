# /etc/puppet/modules/curl/manifests/init.pp

class curl {
    package {"curl": ensure => installed }
}
