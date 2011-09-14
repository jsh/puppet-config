# /etc/puppet/manifests/node.pp

node default {
  include 64bit
  include build-essential
  include chromium
  include compilers
  include curl
  include devlibs
  include expect
  include eclipse
  include gperf
#  include java
#  include hudsonslave
  include mail
  include maven2
  include ncurses
  include ntp
  include putty
  include repos
  include sip-tester
  include sudo
  include timezone::mountain
  include tree
  include vcs
  include x11
  include xsel
#  include users
  include zip
  include zlib
  include vim
}
