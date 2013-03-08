## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := SCHI519

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/SCHI519/device_SCHI519.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := SCHI519
PRODUCT_NAME := cm_SCHI519
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SCHI519
PRODUCT_MANUFACTURER := samsung
