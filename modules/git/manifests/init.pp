# /etc/puppet/modules/git/manifests/init.pp

class git {
    package {"git-core": ensure => installed }
}
