# Inherit AOSP device configuration for t0lte.
$(call inherit-product, device/samsung/t0lte/full_t0lte.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/bluelightning/configs/gsm.mk)

# Inherit bluelightning common bits
$(call inherit-product, vendor/bluelightning/configs/common.mk)

# Galaxy Note Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/bluelightning/overlay/note-common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration.
PRODUCT_NAME := bluelightning_t0lte
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := t0lte
PRODUCT_MODEL := GT-N7105
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0lte TARGET_DEVICE=t0lte BUILD_FINGERPRINT="samsung/t0ltexx/t0lte:4.1.2/JZO54K/N7105XXDLL4:user/release-keys" PRIVATE_BUILD_DESC="t0ltexx-user 4.1.2 JZO54K N7105XXDLL4 release-keys"
PRODUCT_RELEASE_NAME := t0lte

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/bluelightning/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

