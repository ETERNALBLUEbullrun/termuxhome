set -x
apt-get update && apt-get upgrade &&
apt-get install vim ctags git sqlite
. gittest/bin/gitAlias.sh
apt-get install openssh gh
cp ~/../usr/etc/ssh/ssh_host_ed25519_key ~/.ssh/id_ed25519
apt-get install proot-distro && (
)

