#!/bin/sh
set -x
apt-get update && apt-get upgrade &&
apt-get install vim ctags git sqlite
pkg install man manpages
pkg install doxygen
pkg install dpkg #not found: dpkg-buildpackage
pkg install apt-file &&
	apt-file update
. gittest/bin/gitAlias.sh
apt-get install openssh gh
cp ~/../usr/etc/ssh/ssh_host_ed25519_key ~/.ssh/id_ed25519
apt-get install proot-distro && (
proot-distro install debian >> install_debian.log &&
cat .vimrc >> $DebianRoot/.vimrc
cat .bashrc >> $DebianRoot/.bashrc
cp --parents .vim/TabComplete $DebianRoot
)
ssh-keygen -t ed25519 -C "you"
eval `ssh-agent -s`
ssh-add ./.ssh/id_ed25519

