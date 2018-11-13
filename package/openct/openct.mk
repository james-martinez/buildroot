################################################################################
#
# openct-0.6.20
################################################################################

OPENCT_VERSION =0.6.20
OPENCT_SITE = $(call github,OpenSC,openct,openct-$(OPENCT_VERSION))
OPENCT_LICENSE = LGPL-2.1
OPENCT_LICENSE_FILES = LGPL-2.1
OPENCT_DEPENDENCIES = host-pkgconf libtool libusb-compat pcsc-lite
OPENCT_CONF_OPTS +=  --enable-usb --enable-pcsc
OPENCT_INSTALL_STAGING = YES
OPENCT_AUTORECONF = YES


$(eval $(autotools-package))
