#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, device/oneplus/sm8150-common/common.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/oneplus/guacamoleb/guacamoleb-vendor.mk)
#$(call inherit-product-if-exists, vendor/addons/google/camera/config.mk)
#$(call inherit-product-if-exists, vendor/oneplus/camera/camera-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-krypton

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    $(LOCAL_PATH)/audio/mixer_paths_pahu.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_pahu.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tavil.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tavil.xml

# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom

# Mark as official build
OFFICIAL_BUILD := true

# Remove some prebuilt apps
PRODUCT_PACKAGES += \
    RemovePackagesDevice

# Device Personalization Services
PRODUCT_PACKAGES += \
    MatchmakerPrebuilt

# OPFeature
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/odm_feature_list:$(TARGET_COPY_OUT_ODM)/etc/odm_feature_list

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl:64 \
    android.hardware.vibrator@1.0-service

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)