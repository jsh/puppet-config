# /etc/puppet/modules/ncurses/manifests/init.pp

class ncurses {
    package {"libncurses5": ensure => installed }
}
