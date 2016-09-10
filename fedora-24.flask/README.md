### rootfs containing Python3 + Flask on a Fedora 24 base image

To create it:

```
sudo dnf --installroot=`pwd` --disablerepo=*  --enablerepo=fedora --releasever=24 install python3 && sudo dnf --installroot=`pwd` --enablerepo=fedora clean all
```

```
cd ./usr
./bin/python3 ./bin/pip3 install flask
```
