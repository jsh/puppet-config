# /etc/puppet/modules/pcap/manifests/init.pp

class pcap {

    package {"libpcap-dev": ensure => installed }

}
