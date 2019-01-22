# Copyright (C) 2018 Project dotOS
# Copyright (C) 2018 Superior OS
# Copyright (C) 2018 Ancient Rom
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


PRODUCT_BRAND ?= Ancient Rom

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

include vendor/ancient/config/version.mk

# init file
PRODUCT_COPY_FILES += \
    vendor/ancient/prebuilt/common/etc/init.ancient.rc:system/etc/init/init.ancient.rc

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/ancient/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/ancient/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/ancient/prebuilt/common/bin/50-base.sh:system/addon.d/50-base.sh \

ifeq ($(AB_OTA_UPDATER),true)
PRODUCT_COPY_FILES += \
    vendor/ancient/prebuilt/common/bin/backuptool_ab.sh:system/bin/backuptool_ab.sh \
    vendor/ancient/prebuilt/common/bin/backuptool_ab.functions:system/bin/backuptool_ab.functions \
    vendor/ancient/prebuilt/common/bin/backuptool_postinstall.sh:system/bin/backuptool_postinstall.sh
endif

# priv-app permissions
PRODUCT_COPY_FILES += \
    vendor/ancient/prebuilt/common/etc/permissions/privapp-permissions-ancient.xml:system/etc/permissions/privapp-permissions-ancient.xml

# Device Overlays
DEVICE_PACKAGE_OVERLAYS += \
    vendor/ancient/overlay/common

# EXT4/F2FS format script
PRODUCT_COPY_FILES += \
    vendor/ancient/prebuilt/common/bin/format.sh:install/bin/format.sh

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/ancient/config/permissions/backup.xml:system/etc/sysconfig/backup.xml

# Markup libs
PRODUCT_COPY_FILES += \
    vendor/ancient/prebuilt/common/lib/libsketchology_native.so:system/lib/libsketchology_native.so \
    vendor/ancient/prebuilt/common/lib64/libsketchology_native.so:system/lib64/libsketchology_native.so

# Pixel sysconfig
PRODUCT_COPY_FILES += \
    vendor/ancient/prebuilt/common/etc/sysconfig/pixel.xml:system/etc/sysconfig/pixel.xml

# init.d support
PRODUCT_COPY_FILES += \
    vendor/ancient/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner

# ancient-rom-specific init file
PRODUCT_COPY_FILES += \
    vendor/ancient/prebuilt/common/etc/init.local.rc:root/init.ancient.rc

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/ancient/prebuilt/common/media/LMspeed_508.emd:system/media/LMspeed_508.emd \
    vendor/ancient/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/ancient/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

# Fix Dialer
PRODUCT_COPY_FILES +=  \
    vendor/ancient/prebuilt/common/etc/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# Media
PRODUCT_GENERIC_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# Clean cache
PRODUCT_COPY_FILES += \
    vendor/ancient/prebuilt/common/bin/clean_cache.sh:system/bin/clean_cache.sh

# Recommend using the non debug dexpreopter
USE_DEX2OAT_DEBUG ?= false

# CAF
# Telephony packages
PRODUCT_PACKAGES += \
    ims-ext-common \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Weather
PRODUCT_COPY_FILES +=  \
    vendor/ancient/prebuilt/common/etc/sysconfig/org.pixelexperience.weather.client.xml:system/etc/sysconfig/org.pixelexperience.weather.client.xml \
    vendor/ancient/prebuilt/common/etc/permissions/org.pixelexperience.weather.client.xml:system/etc/default-permissions/org.pixelexperience.weather.client.xml

PRODUCT_PROPERTY_OVERRIDES += \
    org.pixelexperience.weather.revision=2

# Lawnchair
PRODUCT_COPY_FILES += \
    vendor/ancient/prebuilt/common/etc/permissions/privapp-permissions-lawnchair.xml:system/etc/permissions/privapp-permissions-lawnchair.xml \
    vendor/ancient/prebuilt/common/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml:system/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml

# Default ringtone/notification/alarm sounds
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.config.ringtone=Pubg.ogg,Pubg_Remix.ogg \
    ro.config.notification_sound=Pikachu.ogg \
    ro.config.alarm_alert=Helium.ogg

# Bootanimation
include vendor/ancient/config/bootanimation.mk

#Telephony
$(call inherit-product, vendor/ancient/config/telephony.mk)

# Some Apps
PRODUCT_COPY_FILES += \
    vendor/superior/prebuilt/common/apk/SubstratumKey.apk:system/priv-app/SubstratumKey/SubstratumKey.apk \
    vendor/superior/prebuilt/common/priv-app/MatchmakerPrebuilt.apk:system/priv-app/MatchmakerPrebuilt/MatchmakerPrebuilt.apk \
    vendor/superior/prebuilt/common/apk/MarkupGoogle.apk:system/app/MarkupGoogle/MarkupGoogle.apk \
    vendor/superior/prebuilt/common/apk/WellbeingPrebuilt.apk:system/app/WellbeingPrebuilt/WellbeingPrebuilt.apk

# Packages
include vendor/ancient/config/packages.mk

# Fonts
include vendor/ancient/config/fonts.mk

# Sounds
include vendor/ancient/config/sounds.mk

# Ancient_props
$(call inherit-product, vendor/ancient/config/ancient_props.mk)

ifeq ($(TARGET_BUILD_VARIANT),eng)
# Disable ADB authentication
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.adb.secure=0
else
# Enable ADB authentication
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.adb.secure=1
endif
