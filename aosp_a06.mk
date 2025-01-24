#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from a06 device
$(call inherit-product, device/samsung/a06/device.mk)

# Inherit from wingcamera-samsung

PRODUCT_DEVICE := a06
PRODUCT_NAME := aosp_a06
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy A06
PRODUCT_MANUFACTURER := Samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

TARGET_EXCLUDES_AUDIOFX := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a06xx-user 14 UP1A.231005.007 A065FXXS2AXJ2 release-keys" \
    BuildFingerprint=samsung/a06xx/a06:14/UP1A.231005.007/A065FXXS2AXJ2:user/release-keys
