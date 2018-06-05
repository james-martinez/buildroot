################################################################################
#
# libaws-cpp-sdk
#
################################################################################

LIBAWS_CPP_SDK_VERSION = 1.1.23
LIBAWS_CPP_SDK_SOURCE = $(LIBAWS_CPP_SDK_VERSION).tar.gz
LIBAWS_CPP_SDK_SITE = https://github.com/aws/aws-sdk-cpp/archive/
LIBAWS_CPP_SDK_DEPENDENCIES = zlib openssl libcurl
LIBAWS_CPP_SDK_CONF_OPTS = -DBUILD_ONLY="sqs" -DCMAKE_BUILD_TYPE=Debug -DTARGET_ARCH=LINUX
LIBAWS_CPP_SDK_LICENSE = Apache-2.0
LIBAWS_CPP_SDK_LICENSE_FILES = LICENSE
LIBAWS_CPP_SDK_INSTALL_STAGING = YES
LIBAWS_CPP_SDK_INSTALL_TARGET = NO

$(eval $(cmake-package))