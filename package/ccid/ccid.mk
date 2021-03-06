################################################################################
#
# ccid
#
################################################################################

CCID_VERSION = 1.4.30
CCID_SOURCE = ccid-$(CCID_VERSION).tar.bz2
CCID_SITE = https://ccid.apdu.fr/files/
CCID_LICENSE = LGPLv2.1+
CCID_LICENSE_FILES = COPYING
CCID_INSTALL_STAGING = YES
CCID_DEPENDENCIES = host-pkgconf libusb pcsc-lite

ifeq ($(BR2_PACKAGE_HAS_UDEV),y)
define CCID_INSTALL_UDEV_RULES
	if test -d $(TARGET_DIR)/etc/udev/rules.d ; then \
		cp $(@D)/src/92_pcscd_ccid.rules $(TARGET_DIR)/etc/udev/rules.d/ ; \
	fi;
endef

CCID_POST_INSTALL_TARGET_HOOKS += CCID_INSTALL_UDEV_RULES
endif

$(eval $(autotools-package))
