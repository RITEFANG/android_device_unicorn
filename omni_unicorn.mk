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
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from unicorn device
$(call inherit-product, device/xiaomi/unicorn/device.mk)

PRODUCT_DEVICE := unicorn
PRODUCT_NAME := omni_unicorn
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2206122SC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="unicorn-user 12 SKQ1.230401.001 V816.0.23.12.4.DEV release-keys"

BUILD_FINGERPRINT := Xiaomi/unicorn/unicorn:12/SKQ1.230401.001/V816.0.23.12.4.DEV:user/release-keys
