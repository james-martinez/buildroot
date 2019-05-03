################################################################################
#
# pkcs11-helper
#
################################################################################

PKCS11_HELPER_VERSION = 1.25.1
PKCS11_HELPER_SITE = $(call github,OpenSC,pkcs11-helper,pkcs11-helper-$(PKCS11_HELPER_VERSION))
PKCS11_HELPER_DEPENDENCIES = host-pkgconf
PKCS11_HELPER_INSTALL_STAGING = YES
PKCS11_HELPER_CONF_OPTS = --disable-static
PKCS11_HELPER_LICENSE = GPL2
PKCS11_HELPER_LICENSE_FILES = COPYING
PKCS11_HELPER_AUTORECONF = YES
$(eval $(autotools-package))
