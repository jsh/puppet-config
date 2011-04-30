# /etc/puppet/modules/devlibs/manifests/init.pp

class devlibs {
    package {"libesd0-dev": ensure => installed }
    package {"libpcre3-dev": ensure => installed }
    package {"libsdl1.2-dev": ensure => installed }
    package {"libwxgtk2.6-dev": ensure => installed }
}
