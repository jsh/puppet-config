# /etc/puppet/modules/uboot-mkimage/manifests/init.pp

class uboot-mkimage {

    package {"uboot-mkimage": ensure => installed }

}
