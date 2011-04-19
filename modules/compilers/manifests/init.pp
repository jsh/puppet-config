# /etc/puppet/modules/gcc/manifests/init.pp

class compilers {
    package {"gcc": ensure => installed }
    package {"g++": ensure => installed }
    package {"bison": ensure => installed }
    package {"flex": ensure => installed }
}
