#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ls12_mt8797_wifi_64 device
$(call inherit-product, device/alps/ls12_mt8797_wifi_64/device.mk)

PRODUCT_DEVICE := ls12_mt8797_wifi_64
PRODUCT_NAME := omni_ls12_mt8797_wifi_64
PRODUCT_BRAND := alps
PRODUCT_MODEL := TALIH-PD2
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_ls12_mt8797_wifi_64-user 12 SP1A.210812.016 1713825001 release-keys"

BUILD_FINGERPRINT := alps/vnd_ls12_mt8797_wifi_64/ls12_mt8797_wifi_64:12/SP1A.210812.016/1713825001:user/release-keys
