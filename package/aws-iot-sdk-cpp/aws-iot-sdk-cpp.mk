################################################################################
#
# aws-iot-sdk-cpp
#
################################################################################

AWS_IOT_SDK_CPP_VERSION = 1.4.0
AWS_IOT_SDK_CPP_SITE = $(call github,aws,aws-iot-device-sdk-cpp,v$(AWS_IOT_SDK_CPP_VERSION))
AWS_IOT_SDK_CPP_DEPENDENCIES = openssl
AWS_IOT_SDK_CPP_CONF_OPTS = -DBUILD_CLI=OFF   -DBUILD_SAMPLES=OFF  -DBUILD_TESTS=OFF -DBUILD_DOCS=OFF
AWS_IOT_SDK_CPP_LICENSE = Apache-2.0
AWS_IOT_SDK_CPP_LICENSE_FILES = LICENSE
AWS_IOT_SDK_CPP_INSTALL_STAGING = YES


$(eval $(cmake-package))