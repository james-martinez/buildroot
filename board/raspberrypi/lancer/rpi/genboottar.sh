#!/bin/sh
BOARD_DIR="$(dirname $0)"
echo "Creating boot tar"
tar -cf $BINARIES_DIR/boot.tar  --numeric-owner \
-C  $BINARIES_DIR zImage bcm2710-rpi-3-b.dtb bcm2710-rpi-3-b-plus.dtb  bcm2710-rpi-cm3.dtb \
-C  $BINARIES_DIR/rpi-firmware bootcode.bin  start.elf fixup.dat overlays/ \
-C  /home/lancer/Desktop/sources/buildroot-2018.05/buildroot/board/raspberrypi/lancer/rpi cmdline.txt config.txt
