#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamoleb device
$(call inherit-product, device/oneplus/guacamoleb/device.mk)

# Inherit some common KOSP stuff.
$(call inherit-product, vendor/krypton/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := krypton_guacamoleb
PRODUCT_DEVICE := guacamoleb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := GM1905
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_SYSTEM_NAME := OnePlus7
PRODUCT_SYSTEM_DEVICE := OnePlus7

# GAPPS
GAPPS_BUILD := true

# Lawnchair
TARGET_BUILD_LAWNCHAIR := true

# Boot animation
scr_resolution := 1080
TARGET_SCREEN_HEIGHT := 2240
TARGET_SCREEN_WIDTH := 1080

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7_EEA/OnePlus7:11/RKQ1.201022.002/2204061052:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus7 \
    TARGET_NAME=OnePlus7 \
    PRIVATE_BUILD_DESC="OnePlus7-user 11   release-keys"
PRODUCT_GMS_CLIENTID_BASE := android-oneplus
