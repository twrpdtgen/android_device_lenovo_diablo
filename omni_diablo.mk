#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from diablo device
$(call inherit-product, device/lenovo/diablo/device.mk)

PRODUCT_DEVICE := diablo
PRODUCT_NAME := omni_diablo
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo L71061
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="diablo-user 12 SKQ1.211113.001 13.5.563_220305 release-keys"

BUILD_FINGERPRINT := Lenovo/diablo/diablo:12/SKQ1.211113.001/13.5.563_220305:user/release-keys
