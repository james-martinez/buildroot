################################################################################
#
# imx-vpu-lib
#
################################################################################

IMX_VPU_LIB_VERSION = $(FREESCALE_IMX_VERSION)
IMX_VPU_LIB_SITE    = $(FREESCALE_IMX_MIRROR_SITE)
IMX_VPU_LIB_LICENSE = LGPLv2.1+
# No license file included

IMX_VPU_LIB_INSTALL_STAGING = YES

# imx-lib needs access to imx-specific kernel headers
IMX_VPU_LIB_DEPENDENCIES += linux
IMX_VPU_LIB_INCLUDE = \
	-I$(LINUX_DIR)/drivers/mxc/security/rng/include \
	-I$(LINUX_DIR)/drivers/mxc/security/sahara2/include \
	-idirafter $(LINUX_DIR)/include

IMX_VPU_LIB_MAKE_ENV = \
	$(TARGET_MAKE_ENV) \
	$(TARGET_CONFIGURE_OPTS) \
	CROSS_COMPILE="$(CCACHE) $(TARGET_CROSS)" \
	PLATFORM=$(BR2_PACKAGE_IMX_VPU_LIB_PLATFORM)  \
	INCLUDE="$(IMX_VPU_LIB_INCLUDE)"

define IMX_VPU_LIB_BUILD_CMDS
	$(IMX_VPU_LIB_MAKE_ENV) $(MAKE1) -C $(@D)
endef

define IMX_VPU_LIB_INSTALL_STAGING_CMDS
	$(IMX_VPU_LIB_MAKE_ENV) $(MAKE1) -C $(@D) DEST_DIR=$(STAGING_DIR) install
endef

define IMX_VPU_LIB_INSTALL_TARGET_CMDS
	$(IMX_VPU_LIB_MAKE_ENV) $(MAKE1) -C $(@D) DEST_DIR=$(TARGET_DIR) install
endef

$(eval $(generic-package))
