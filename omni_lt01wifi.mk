# Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := lt01wifi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/lt01wifi/full_lt01wifi.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lt01wifi
PRODUCT_NAME := omni_lt01wifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T310
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lt01wifiue TARGET_DEVICE=lt01wifi BUILD_FINGERPRINT="samsung/lt01wifiue/lt01wifi:4.2.2/JDQ39/T310UEUAMH2:user/release-keys" PRIVATE_BUILD_DESC="lt01wifiue-user 4.2.2 JDQ39 T310UEUAMH2 release-keys"
