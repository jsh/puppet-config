# /etc/puppet/modules/nfs/manifests/init.pp

class nfs {
    package {"nfs-common": ensure => installed }
}
