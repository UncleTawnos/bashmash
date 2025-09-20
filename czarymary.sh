#!/bin/bash -x
apt update
apt dist-upgrade -y
apt install -y patch gawk bash-completion vim-nox net-tools aptitude git

mkdir -p /etc/apt/conf.d
wget https://raw.githubusercontent.com/UncleTawnos/bashmash/refs/heads/master/etc/apt/conf.d/recommends.conf -O /etc/apt/conf.d/recommends.conf
wget https://raw.githubusercontent.com/UncleTawnos/bashmash/refs/heads/master/vimrc.local -O /etc/vim/vimrc.local
mkdir -p /etc/bashrc.bashrc.d
wget https://raw.githubusercontent.com/UncleTawnos/bashmash/refs/heads/master/system_aliases -O /etc/bash.bashrc.d/system_aliases

cd /tmp
wget https://raw.githubusercontent.com/UncleTawnos/bashmash/refs/heads/master/bashrc.patch -O /tmp/bashrc.patch
cd /etc && patch -p1 < /tmp/bashrc.patch




