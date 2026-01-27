# Copyright (C) 2025 Project InfinityX
# Device configuration for Motorola Caprip (Moto G30)
# Infinity-X product file that inherits Lineage/AOSP base product config.

# Inherit base product definitions (architecture, base packages, telephony).
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device (device specific BoardConfig and device.mk)
$(call inherit-product, device/motorola/caprip/device.mk)

# Inherit vendor blobs and vendor product definitions
$(call inherit-product, vendor/motorola/caprip/caprip-vendor.mk)

# Optional Infinity vendor/product additions (if present)
$(call inherit-product-if-exists, vendor/infinity/config/common_full_phone.mk)

#
# Device identifier. Must come after inclusions above.
#
PRODUCT_NAME := infinity_caprip
PRODUCT_DEVICE := caprip
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto G30
PRODUCT_MANUFACTURER := motorola

INFINITY_MAINTAINER := Shipu


# GMS client id base (if required / used by base)
PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Build fingerprint and build props (override as needed)
