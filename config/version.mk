# Copyright (C) 2018 Project dotOS
# Copyright (C) 2018 Superior OS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#Ancient OS Versioning :
ANCIENT_MOD_VERSION = CIVILIZATION

ifndef ANCIENT_BUILD_TYPE
    ANCIENT_BUILD_TYPE := PREHISTORIC
endif

# Test Build Tag
ifeq ($(ANCIENT_TEST),true)
    ANCIENT_BUILD_TYPE := DEVELOPER
endif

CURRENT_DEVICE=$(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3)
DATE := $(shell date -u +%Y%m%d)
CUSTOM_BUILD_DATE := $(DATE)-$(shell date -u +%H%M)

ifeq ($(ANCIENT_OFFICIAL), true)
   LIST = $(shell curl -s https://raw.githubusercontent.com/ancient-rom/android_vendor_ancient/pie/ancient.devices)
   FOUND_DEVICE =  $(filter $(CURRENT_DEVICE), $(LIST))
    ifeq ($(FOUND_DEVICE),$(CURRENT_DEVICE))
      IS_OFFICIAL=true
      ANCIENT_BUILD_TYPE := PRIMEVAL
     
PRODUCT_PACKAGES += \
    Updater
	
    endif
    ifneq ($(IS_OFFICIAL), true)
       ANCIENT_BUILD_TYPE := PREHISTORIC
       $(error Device is not official "$(FOUND)")
    endif
endif

TARGET_PRODUCT_SHORT := $(subst ancient_,,$(CUSTOM_BUILD))

ANCIENT_VERSION := ancient-rom-$(ANCIENT_MOD_VERSION)-$(CURRENT_DEVICE)-$(ANCIENT_BUILD_TYPE)-$(CUSTOM_BUILD_DATE)

ANCIENT_FINGERPRINT := ancient-rom/$(ANCIENT_MOD_VERSION)/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(CUSTOM_BUILD_DATE)

PRODUCT_GENERIC_PROPERTIES += \
  ro.ancient.version=$(ANCIENT_VERSION) \
  ro.ancient.releasetype=$(ANCIENT_BUILD_TYPE) \
  ro.modversion=$(ANCIENT_MOD_VERSION)

ANCIENT_DISPLAY_VERSION := ancient-rom-$(ANCIENT_MOD_VERSION)-$(ANCIENT_BUILD_TYPE)

PRODUCT_GENERIC_PROPERTIES += \
  ro.ancient.display.version=$(ANCIENT_DISPLAY_VERSION)\
  ro.ancient.fingerprint=$(ANCIENT_FINGERPRINT)
