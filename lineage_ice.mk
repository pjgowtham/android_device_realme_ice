#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ice device
$(call inherit-product, device/realme/ice/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_ice
PRODUCT_DEVICE := ice
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3461

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="RMX3461-user 13 TP1A.220905.001 R.1bafa12-15aec-18ea2 release-keys" \
    BuildFingerprint=realme/RMX3461/RE54BFL1:13/TP1A.220905.001/R.1bafa12-15aec-18ea2:user/release-keys \
    DeviceName=RE54BFL1 \
    DeviceProduct=RMX3461 \
    SystemDevice=RE54BFL1 \
    SystemName=RMX3461
