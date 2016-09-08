Generate me: 

sudo dnf --installroot=`pwd`/dnf-root --disablerepo=*  --enablerepo=fedora --releasever=24 install python3 && sudo dnf --enablerepo=fedora clean all installroot=`pwd`/dnf-root

cd rootfs/usr/bin
sudo ./python3 pip3 install flask
