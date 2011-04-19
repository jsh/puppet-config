# /etc/puppet/manifests/node.pp

node default {
  include compilers
  include git
  include hudsonslave
  include maven2
  include ncurses
  include ntp
  include sudo
  include timezone::mountain
  include tree
#  include users
  include zip
  include zlib
  include vim
}
