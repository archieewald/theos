ifeq ($(_THEOS_PLATFORM_LOADED),)
_THEOS_PLATFORM_LOADED := 1
THEOS_PLATFORM_NAME := macosx

ifneq ($(THEOS_CURRENT_ARCH),)
ifneq ($(THEOS_PLATFORM_SDK_ROOT_$(THEOS_CURRENT_ARCH)),)
THEOS_PLATFORM_SDK_ROOT = $(THEOS_PLATFORM_SDK_ROOT_$(THEOS_CURRENT_ARCH))
endif
endif
THEOS_PLATFORM_SDK_ROOT ?= $(shell xcode-select -print-path)
# To have xcrun use our customized THEOS_PLATFORM_SDK_ROOT
export DEVELOPER_DIR = $(THEOS_PLATFORM_SDK_ROOT)

_THEOS_PLATFORM_DEFAULT_TARGET := iphone
_THEOS_PLATFORM_DU_EXCLUDE := -I
_THEOS_PLATFORM_MD5SUM := md5
endif
