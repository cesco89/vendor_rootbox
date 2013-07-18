# Inherit the endeavoru device
$(call inherit-product, device/htc/endeavoru/full_endeavoru.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Inherit some common aokp stuff.
$(call inherit-product, vendor/rootbox/configs/common.mk)

# S3 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/endeavoru

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Device naming
PRODUCT_DEVICE := endeavoru
PRODUCT_NAME := rootbox_endeavoru
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC One X
PRODUCT_MANUFACTURER := HTC

#Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=endeavoru BUILD_FINGERPRINT="htc_europe/endeavoru/endeavoru:4.1.1/JRO03C/128187.27:user/release-keys" PRIVATE_BUILD_DESC="3.14.401.27 CL128187 release-keys"

# Copy over prebuilt boot animation
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/bootanimation/bootanimation_1280_720.zip:system/media/bootanimation.zip
