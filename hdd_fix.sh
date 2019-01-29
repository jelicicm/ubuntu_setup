#!/bin/bash

sudo -s -- <<EOF
ntfsfix /dev/sda1
ntfsfix /dev/sda2
mount -t ntfs /dev/sda1 /mnt/Data/
mount -t ntfs /dev/sda2 /mnt/Media/
EOF
