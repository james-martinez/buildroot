#!/bin/sh

CUR_DIR=$(cd `dirname $0` && pwd)
echo "Creating boot tar"
tar -czf $BINARIES_DIR/boot.tar.gz  --numeric-owner \
-C  $BINARIES_DIR zImage bcm2710-rpi-3-b.dtb bcm2710-rpi-3-b-plus.dtb \
-C  $BINARIES_DIR/rpi-firmware bootcode.bin  start.elf fixup.dat overlays/ \
-C  $CUR_DIR cmdline.txt config.txt
