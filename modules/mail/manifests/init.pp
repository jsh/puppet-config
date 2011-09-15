# /etc/puppet/modules/mail/manifests/init.pp

class mail {

    package {"mailutils": ensure => installed }

}
