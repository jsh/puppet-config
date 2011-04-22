# /etc/puppet/modules/vcs/manifests/init.pp

class vcs {
    package {"git-core": ensure => installed }
    package {"subversion": ensure => installed }
}
