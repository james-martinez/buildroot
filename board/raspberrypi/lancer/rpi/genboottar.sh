#!/bin/sh

CUR_DIR=$(cd `dirname $0` && pwd)
echo "Creating boot tar"
tar -czf $BINARIES_DIR/boot.tar.gz  --numeric-owner \
-C  $BINARIES_DIR/rpi-firmware bootcode.bin  start.elf fixup.dat \
-C  $CUR_DIR u-boot.bin config.txt
