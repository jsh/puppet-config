# /etc/puppet/modules/vim/manifests/init.pp

class vim{
        package { "vim-gnome":
                ensure => present,
        }
        exec { "update-alternatives --set editor /usr/bin/vim.gnome":
                path => "/bin:/sbin:/usr/bin:/usr/sbin",
                unless => "test /etc/alternatives/editor -ef /usr/bin/vim.gnome"
        }
}
