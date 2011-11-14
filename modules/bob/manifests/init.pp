# /etc/puppet/modules/bob/manifests/init.pp

class bob {
    package {"chkconfig": ensure => installed }
    package {"ecj": ensure => installed }
    package {"gitk": ensure => installed }
    package {"gparted": ensure => installed }
    package {"guile-1.6": ensure => installed }
    package {"icon-naming-utils": ensure => installed }
    package {"libtool": ensure => installed }
    package {"swig": ensure => installed }
    package {"texinfo": ensure => installed }
    package {"binutils-dev": ensure => installed }
    package {"libdbus-glib-1-dev": ensure => installed }
    package {"libexpat1-dev": ensure => installed }
    package {"libglade2-dev": ensure => installed }
    package {"python-dev": ensure => installed }
}
