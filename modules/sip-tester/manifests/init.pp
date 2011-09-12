# /etc/puppet/modules/sip-tester/manifests/init.pp

class sip-tester {

    package {"sip-tester": ensure => installed }

}
