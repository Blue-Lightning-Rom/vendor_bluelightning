# Inherit common tuff
$(call inherit-product, vendor/bluelightning/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/bluelightning/overlay/common_tablets
