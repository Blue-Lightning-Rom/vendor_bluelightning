# Inherit AOSP device configuration for quincyatt.
$(call inherit-product, device/samsung/quincyatt/full_quincyatt.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/bluelightning/configs/gsm.mk)

# Inherit bluelightning common bits
$(call inherit-product, vendor/bluelightning/configs/common.mk)

# Quincyatt overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/bluelightning/overlay/quincyatt

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration.
PRODUCT_NAME := bluelightning_quincyatt
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := quincyatt
PRODUCT_MODEL := SGH-I717
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I717 TARGET_DEVICE=SGH-I717 BUILD_FINGERPRINT="samsung/SGH-I717/SGH-I717:4.0.4/IMM76D/UCLE3:user/release-keys" PRIVATE_BUILD_DESC="SGH-I717-user 4.0.4 IMM76D UCLE3 release-keys"

# Copy bootanimation.zip
PRODUCT_COPY_FILES += \
    vendor/bluelightning/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip
