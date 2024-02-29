##************************************************************************##
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
##************************************************************************##

LOCAL_PATH := device/oplus/RMX2151

##** Shipping API level **##
PRODUCT_SHIPPING_API_LEVEL := 29
BOARD_SHIPPING_API_LEVEL := 29
BOARD_API_LEVEL := 29
SHIPPING_API_LEVEL := 29

##** HACK: Set vendor patch level **##
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31 \
    ro.bootimage.build.date.utc=0 \
    ro.build.date.utc=0

##** Property **##
PRODUCT_PROPERTY_OVERRIDES += persist.sys.fuse.passthrough.enable=true
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*.rc,$(LOCAL_PATH)/recovery/root,recovery/root)

##** Partitions && Property **##
PRODUCT_USE_DYNAMIC_PARTITIONS := true

##** Health **##
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

##** fastbootd **##
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

##** HIDL **##
PRODUCT_PACKAGES += \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \

##** USB **##
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0.vendor \
    android.hardware.usb@1.1.vendor \
    android.hardware.usb@1.2.vendor \
    android.hardware.usb@1.3.vendor \
    android.hardware.usb.gadget@1.0.vendor \
    android.hardware.usb.gadget@1.1.vendor

##** Vibrator **##
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.mediatek

##** Recovery **##
PRODUCT_PACKAGES += \
    init.recovery.mt6785.rc \
    init.recovery.service.rc \
    init.trustonic.rc \
    init.recovery.usb.rc \
    ueventd.rc \
    tee.rc \
    init.aging.rc

##** Keymaster **##
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0.vendor \
    libkeymaster4.vendor:64 \
    libkeymaster4support.vendor:64 \
    libsoft_attestation_cert.vendor:64 \
    libkeystore-wifi-hidl \
    libkeystore-engine-wifi-hidl

##** Gatekeeper **##
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.gatekeeper@1.0-impl \
    gatekeeperd

##** Soong namespaces **##
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

##** Inherit the proprietary files **##
$(call inherit-product, vendor/oplus/RMX2151/RMX2151-vendor.mk)

