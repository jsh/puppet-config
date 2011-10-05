# /etc/puppet/modules/architecture/manifests/x86_64.pp

class architecture::x86_64 {
    package {"lib32ncurses5-dev": ensure => installed }
    package {"ia32-libs": ensure => installed }
    package {"gcc-multilib": ensure => installed }
    package {"g++-multilib": ensure => installed }
    package {"libc6-dev-i386": ensure => installed }
    package {"lib32z1-dev": ensure => installed }
}
