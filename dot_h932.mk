$(call inherit-product, device/lge/h932/full_h932.mk)

# Inherit some common DotOS stuff.
$(call inherit-product, vendor/dot/config/common.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := dot_h932
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := V30

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="joan" \
    PRODUCT_DEVICE="joan" \
    PRODUCT_NAME="joan_tmo_us" \
    PRIVATE_BUILD_DESC="joan_tmo_us-user 8.0.0 OPR1.170623.026 1819221128e3d release-keys"

BUILD_FINGERPRINT="lge/joan_tmo_us/joan:8.0.0/OPR1.170623.026/1819221128e3d:user/release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model ro.vendor.product.model

# Gapps
GAPPS_VARIANT := full
TARGET_GAPPS_ARCH := arm64
CUSTOM_BUILD_TYPE := UNOFFICIAL

# Animation Bootanimation res
TARGET_BOOT_ANIMATION_RES := 1080
