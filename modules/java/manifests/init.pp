# /etc/puppet/modules/java/manifests/init.pp

class java {
    package {"sun-java6-jdk": ensure => installed }
    package {"sun-java6-plugin": ensure => installed }
}
