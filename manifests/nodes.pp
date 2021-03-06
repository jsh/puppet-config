# /etc/puppet/manifests/node.pp

node default {
  include ant
  include bob
  include build-essential
  include chromium
  include compilers
  include curl
  include devlibs
  include expect
  include eclipse
  include gperf
  case $::architecture { 
    'i386'  : { include architecture::i386   }
    'x86_64': { include architecture::x86_64 }
  }
#  include java
#  include hudsonslave
  include mail
  include maven2
  include ncurses
  include net
  include nfs
  include ntp
  include pcap
  include pidgin
#  include puppet
  include putty
  include remake
  include repos
  include sip-tester
  include sloccount
  include ssl
  include ssh
  include sudo
  include terminator
  include tftpboot
  include timezone::mountain
  include tree
  include uboot-mkimage
  include vcs
  include vim
  include x11
  include xsel
#  include users
  include zip
  include zlib
}
