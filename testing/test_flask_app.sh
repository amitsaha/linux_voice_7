#!/bin/bash
set -e
mkdir -p rootfs rootfs.empty overlay.workdir
mount -t overlay overlay -o lowerdir=./pytest:../fedora-24.flask,upperdir=./rootfs.empty,workdir=./overlay.workdir ./rootfs
/usr/local/sbin/runc run flask-app-testing
umount rootfs
# Clean up
rm -r rootfs rootfs.empty overlay.workdir
