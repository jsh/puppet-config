# /etc/puppet/modules/chromium/manifests/init.pp

class chromium {
    package {"chromium-browser": ensure => installed }
}
