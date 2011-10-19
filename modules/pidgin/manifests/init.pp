# /etc/puppet/modules/pidgin/manifests/init.pp

class pidgin {
    package {"pidgin": ensure => installed }
    package {"intltool": ensure => installed }
    package {"libxml2-dev": ensure => installed }
    package {"libpurple-dev": ensure => installed }
}
