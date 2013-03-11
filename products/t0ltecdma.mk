# Inherit AOSP device configuration for t0lte.
$(call inherit-product, device/samsung/t0ltecdma/full_t0ltecdma.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/rootbox/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Note 2 Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/t0ltecdma

# Setup device specific product configuration.
PRODUCT_NAME := rootbox_t0ltecdma
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := t0ltecdma
PRODUCT_MODEL := SPH-L900
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltespr TARGET_DEVICE=t0ltecdma BUILD_FINGERPRINT="samsung/t0ltespr/t0ltespr:4.1.1/JRO03C/L900VPALJC:user/release-keys" PRIVATE_BUILD_DESC="t0ltespr-user 4.1.1 JRO03C L900VPALJC release-keys"


# l900 specific packages
PRODUCT_PACKAGES += \
    CDMATools

# Release name
PRODUCT_RELEASE_NAME := t0ltecdma

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

