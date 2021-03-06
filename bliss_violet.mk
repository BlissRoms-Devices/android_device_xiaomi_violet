#
# Copyright (C) 2018-2020 The LineageOS Project
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common BlissROMs stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
BLISS_BUILDTYPE := OFFICIAL

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := bliss_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ1A.210105.003/7005429:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ1A.210105.003 7005429 release-keys" \
    PRODUCT_NAME="violet"
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/redfin/redfin:11/RQ1A.210105.003/7005429:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
