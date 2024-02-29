##************************************************************************##
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
##************************************************************************##

##** Inherit from RMX2151 device **##
$(call inherit-product, device/oplus/RMX2151/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from PBRP-common stuff, if building PBRP.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

# Inherit from TWRP-common stuff, if building TWRP.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

##** Device Information **##
PRODUCT_DEVICE := RMX2151
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_BRAND := oplus
PRODUCT_MODEL := RMX2151
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)
PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_MANUFCATURER)
TARGET_VENDOR := $(PRODUCT_MANUFCATURER)
PRODUCT_RELEASE_NAME := RMX2151

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX2151L1 \
    PRODUCT_NAME=RMX2151
##************************************************************************##

