# /etc/puppet/modules/tftpboot/manifests/init.pp

class tftpboot {
    package {"dhcp3-server": ensure => installed }
    package {"tftpd": ensure => installed }
    package {"xinetd": ensure => installed }
    package {"nfs-kernel-server": ensure => installed }
    package {"portmap": ensure => installed }
}
