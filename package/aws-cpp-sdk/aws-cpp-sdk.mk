################################################################################
#
# aws-cpp-sdk
#
################################################################################

AWS_CPP_SDK_VERSION = 1.7.2
AWS_CPP_SDK_SITE = $(call github,aws,aws-sdk-cpp,$(AWS_IOT_SDK_CPP_VERSION))
AWS_CPP_SDK_DEPENDENCIES = zlib openssl libcurl
AWS_CPP_SDK_CONF_OPTS = -DBUILD_ONLY="sqs" -DTARGET_ARCH=LINUX
AWS_CPP_SDK_LICENSE = Apache-2.0
AWS_CPP_SDK_LICENSE_FILES = LICENSE
AWS_CPP_SDK_INSTALL_STAGING = YES


$(eval $(cmake-package))