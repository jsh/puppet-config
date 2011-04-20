# /etc/puppet/modules/expect/manifests/init.pp

class expect {
    package {"expect": ensure => installed }
}
