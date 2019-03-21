################################################################################
#
# libp11-0.4.9
################################################################################

LIBP11_VERSION =0.4.9
LIBP11_SITE = https://github.com/OpenSC/libp11/releases/download/libp11-$(LIBP11_VERSION)
LIBP11_LICENSE = LGPL-2.1
LIBP11_LICENSE_FILES = COPYING
LIBP11_INSTALL_STAGING = YES
LIBP11_DEPENDENCIES =openssl
LIBP11_CONF_OPT += --enable-openssl
LIBP11_AUTORECONF = YES

$(eval $(autotools-package))
