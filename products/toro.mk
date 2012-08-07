# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/jalapeno/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := jalapeno_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_FINGERPRINT=google/mysid/toro:4.1.1/JRO03H/336647:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.1.1 JRO03H 336647 release-keys" BUILD_NUMBER=336647

# Inherit common build.prop overrides
-include vendor/jalapeno/products/common_versions.mk

PRODUCT_PACKAGES += \
CellBroadcastReceiver

# Extra toro overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/jalapeno/overlay/toro

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/jalapeno/proprietary/tuna/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/jalapeno/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/jalapeno/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/jalapeno/proprietary/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/jalapeno/proprietary/common/app/Wallet.apk:system/app/Wallet.apk \
    vendor/jalapeno/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so

# Inherit media effect blobs
-include vendor/jalapeno/products/common_media_effects.mk

# Inherit Face lock security blobs
-include vendor/jalapeno/products/common_facelock.mk

# Inherit drm blobs
-include vendor/jalapeno/products/common_drm_phone.mk


