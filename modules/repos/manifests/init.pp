# /etc/puppet/modules/repos/manifests/init.pp

#add-apt-repository "deb http://archive.canonical.com/ lucid partner"
#apt-get update

class repos {
    package {"python-software-properties": ensure => installed }
}
