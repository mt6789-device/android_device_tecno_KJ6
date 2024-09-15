#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/tecno/KJ6
KERNEL_PATH := $(DEVICE_PATH)-kernel

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1.vendor:64

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResTarget \
    SettingsResTarget \
    SettingsProviderResTarget \
    SystemUIResTarget

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 33

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.transsion

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/transsion/mt6789-common/common.mk)

# Inherit the proprietary files
$(call inherit-product, vendor/tecno/KJ6/KJ6-vendor.mk)
