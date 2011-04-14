# /etc/puppet/modules/ntp/manifests/init.pp

class git {
    package {"git-core": ensure => installed }
}
