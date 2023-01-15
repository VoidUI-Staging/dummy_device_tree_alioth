#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from elish device
$(call inherit-product, device/xiaomi/elish/device.mk)

PRODUCT_DEVICE := elish
PRODUCT_NAME := lineage_elish
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2105K81AC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="elish-user 13 RKQ1.211001.001 V14.0.23.1.4.DEV release-keys"

BUILD_FINGERPRINT := Xiaomi/elish/elish:13/RKQ1.211001.001/V14.0.23.1.4.DEV:user/release-keys
