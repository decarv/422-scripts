#!/bin/bash

archive=".archive"
controller="IDE"

usr=$(whoami)

dt=$(date +"%Y%m%d%H%M%S")
tmp=$(date | md5sum | awk '{print $1}')

if=$1
of="$if-$dt.iso"
if [ $if -z ]; then echo "usage ./mkiso.sh <filename>"; exit; fi

mkdir -p $tmp																&& \
mkisofs -o "$tmp/$of" $if 													&& \
VBoxManage storageattach minix --storagectl $controller \
			   --port 0 --device 1 \
			   --type dvddrive --medium "$tmp/$of"							&& \
mkdir -p $archive 															&& \
mv "$tmp/$of" "$archive/"													&& \
rm -rf $tmp
