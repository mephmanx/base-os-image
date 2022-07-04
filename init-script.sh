#!/bin/bash -e

echo "Downloading latest CentOS Stream 8 iso"
curl -L -o CentOS-Stream.iso http://isoredirect.centos.org/centos/8-stream/isos/x86_64/CentOS-Stream-8-x86_64-20220627-boot.iso
echo $(sha256sum /root/CentOS-Stream.iso)
