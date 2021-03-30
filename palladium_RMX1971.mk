#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifer: Apache-2.0
#

# Inherit some common Palladium stuff.
$(call inherit-product, vendor/palladium/config/common_full_phone.mk)

# Inherit from RMX1971 device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

#GApps
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64

#OFFICIAL
PALLADIUM_BUILDTYPE := OFFICIAL
TARGET_USES_BLUR := true

#PALLADIUM-PROPS
PRODUCT_PRODUCT_PROPERTIES += \
    ro.palladiumdevice.cpu=SDM712 \
    ro.palladiumdevice.display=6.3 \
    ro.palladiumdevice.displaytype=FULLHD+ \
    ro.palladiumdevice.battery=4035mAh \
    ro.palladiumdevice.camera=48MP+8MP+2MP+2MP



# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := RMX1971
PRODUCT_NAME := palladium_RMX1971
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 5 Pro
PRODUCT_MANUFACTURER := Realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ2A.210505.003 7255357 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ2A.210505.003/7255357:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1971" \
    TARGET_DEVICE="RMX1971"
