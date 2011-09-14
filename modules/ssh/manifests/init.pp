# /etc/puppet/modules/ssh/manifests/init.pp

class ssh {

    package {"openssh-client": ensure => installed }
    package {"openssh-server": ensure => installed }

}
