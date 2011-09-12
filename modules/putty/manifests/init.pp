# /etc/puppet/modules/sip-tester/manifests/init.pp

class putty {

    package {"putty": ensure => installed }

}
