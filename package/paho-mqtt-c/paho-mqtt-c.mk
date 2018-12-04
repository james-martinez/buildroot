################################################################################
#
# paho-mqtt-c
#
################################################################################

PAHO_MQTT_C_VERSION = v1.3.0
PAHO_MQTT_C_SITE = $(call github,eclipse,paho.mqtt.c,$(PAHO_MQTT_C_VERSION))
PAHO_MQTT_C_LICENSE = EPL-1.0 or BSD-3-Clause
PAHO_MQTT_C_LICENSE_FILES = epl-v10 edl-v10
PAHO_MQTT_C_INSTALL_STAGING = YES
PAHO_MQTT_C_DEPENDENCIES += openssl
PAHO_MQTT_C_CONF_OPTS += -DPAHO_WITH_SSL=TRUE  -DPAHO_BUILD_DOCUMENTATION=FALSE

define PAHO_MQTT_C_BUILD_CMDS
     $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) build
 endef

define PAHO_MQTT_C_INSTALL_STAGING_CMDS
	$(INSTALL) -D -m 0644 $(@D)/src/MQTTAsync.h $(STAGING_DIR)/usr/include/
	$(INSTALL) -D -m 0644 $(@D)/src/MQTTClient.h $(STAGING_DIR)/usr/include/
	$(INSTALL) -D -m 0644 $(@D)/src/MQTTClientPersistence.h $(STAGING_DIR)/usr/include/
	$(INSTALL) -D -m 0644 $(@D)/src/MQTTProperties.h $(STAGING_DIR)/usr/include/
	$(INSTALL) -D -m 0644 $(@D)/src/MQTTReasonCodes.h $(STAGING_DIR)/usr/include/
	$(INSTALL) -D -m 0644 $(@D)/src/MQTTSubscribeOpts.h $(STAGING_DIR)/usr/include/
        cp -a $(@D)/build/output/libpaho-mqtt*.so* $(STAGING_DIR)/usr/lib/
	cp -a $(@D)/build/output/samples/* $(STAGING_DIR)/usr/bin/
endef

define PAHO_MQTT_C_INSTALL_TARGET_CMDS
        cp -a $(@D)/build/output/libpaho-mqtt*.so* $(TARGET_DIR)/usr/lib/
	cp -a $(@D)/build/output/samples/* $(TARGET_DIR)/usr/bin/
 endef


$(eval $(generic-package))
