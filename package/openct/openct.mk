################################################################################
#
# openct-0.6.20
################################################################################

OPENCT_VERSION =openct-0.6.20
OPENCT_SITE = $(call github,OpenSC,openct,$(OPENCT_VERSION))
OPENCT_LICENSE =LGPL-2.1
OPENCT_LICENSE_FILES = OPENCT/LGPL-2.1
OPENCT_DEPENDENCIES = host-pkgconf host-libtool
OPENCT_AUTORECONF = YES
#OPENCT_AUTORECONF_OPTS= --verbose --install

$(eval $(autotools-package))
