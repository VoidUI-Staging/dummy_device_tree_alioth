#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

PRODUCT_DEVICE := alioth
PRODUCT_NAME := lineage_alioth
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2012K11AC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="alioth-user 13 RKQ1.211001.001 V14.0.22.12.5.DEV release-keys"

BUILD_FINGERPRINT := Redmi/alioth/alioth:13/RKQ1.211001.001/V14.0.22.12.5.DEV:user/release-keys
