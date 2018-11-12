################################################################################
#
# OpenSC-0.19.0
################################################################################

OPENSC_VERSION =0.19.0
OPENSC_SITE = $(call github,OpenSC,OpenSC,$(OPENSC_VERSION))
OPENSC_LICENSE = LGPL2
OPENSC_LICENSE_FILES =OPENSC/COPYING
OPENSC_INSTALL_STAGING = YES
OPENSC_DEPENDENCIES = host-pkgconf pcsc-lite
OPENSC_CONF_OPT += --disable-strict
#OPENSC_AUTORECONF_OPTS= 
OPENSC_AUTORECONF = YES


#ifeq ($(BR2_PACKAGE_HAS_OPENSSL),y)
OPENSC_CONF_OPT += --enable-openssl
OPENSC_DEPENDENCIES += openssl
#else
#OPENSC_CONF_OPT += --disable-openssl
#endif

ifeq ($(BR2_PACKAGE_HAS_OPENPACE),y)
OPENSC_CONF_OPT += --enable-openssl
OPENSC_DEPENDENCIES += openpace
else
OPENSC_CONF_OPT += --disable-openpace
endif

ifeq ($(BR2_PACKAGE_HAS_READLINE),y)
OPENSC_CONF_OPT += --enable-readline
OPENSC_DEPENDENCIES += readline
else
OPENSC_CONF_OPT += --disable-readline
endif

$(eval $(autotools-package))
