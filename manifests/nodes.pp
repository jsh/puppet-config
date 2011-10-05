# /etc/puppet/manifests/node.pp

node default {
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
  include ntp
  include pcap
  include putty
  include repos
  include sip-tester
  include ssl
  include ssh
  include sudo
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
