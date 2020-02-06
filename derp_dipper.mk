#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/dipper/device.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
CURRENT_BUILD_TYPE := gapps
DERP_BUILDTYPE := Official


ifeq ($(CURRENT_BUILD_TYPE), gapps)
IS_PHONE := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_WIFI_EXT := true
TARGET_INCLUDE_STOCK_ARCORE := true
endif

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := derp_dipper
PRODUCT_DEVICE := dipper
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Xiaomi/dipper/dipper:8.1.0/OPM1.171019.011/V9.5.5.0.OEAMIFA:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dipper-user 8.1.0 OPM1.171019.011 V9.5.5.0.OEAMIFA release-keys" \
    PRODUCT_NAME="dipper" \
    TARGET_DEVICE="dipper"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
