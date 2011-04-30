# /etc/puppet/manifests/node.pp

node default {
  include build-essential
  include compilers
  include curl
  include devlibs
  include expect
  include gperf
  include java
  include hudsonslave
  include maven2
  include ncurses
  include ntp
  include repos
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
