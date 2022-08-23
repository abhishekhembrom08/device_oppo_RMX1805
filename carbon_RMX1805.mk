# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/carbon/config/common.mk)

# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Inherit from RMX1805 device
$(call inherit-product, device/oppo/RMX1805/device.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Device identifier
PRODUCT_BRAND := oppo
PRODUCT_DEVICE := RMX1805
PRODUCT_MANUFACTURER := oppo
PRODUCT_NAME := carbon_RMX1805
PRODUCT_MODEL := realme 2

# PRODUCT_GMS_CLIENTID_BASE := android-oppo
TARGET_VENDOR := oppo
TARGET_VENDOR_PRODUCT_NAME := RMX1805

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1805"

#TARGET_GAPPS_ARCH := ARM64
TARGET_BOOT_ANIMATION_RES := 720

# Screen Resolution
TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_WIDTH := 720

TARGET_USE_GENERIC_WALLPAPER := true
