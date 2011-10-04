# /etc/puppet/modules/uboot-mkimage/manifests/init.pp

class tree {

    package {"uboot-mkimage": ensure => installed }

}
