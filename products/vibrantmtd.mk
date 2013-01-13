# Inherit AOSP device configuration for i9100g.
$(call inherit-product, device/samsung/vibrantmtd/full_vibrantmtd.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# i9100g overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/vibrantmtd

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Setup device specific product configuration.
PRODUCT_DEVICE := vibrantmtd
PRODUCT_NAME := rootbox_vibrantmtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-T959

# Build fingerprint / ID / Product name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T959 TARGET_DEVICE=SGH-T959 BUILD_FINGERPRINT=Samsung/SGH-T959/SGH-T959/SGH-T959:2.2/FROYO/UVKB5:user/release-keys PRIVATE_BUILD_DESC="SGH-T959-user 2.2 FROYO UVKB5 release-keys"

PRODUCT_RELEASE_NAME := Vibrantmtd

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

