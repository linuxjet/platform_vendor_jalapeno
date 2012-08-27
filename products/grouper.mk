# Inherit AOSP device configuration for grouper.
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files.
$(call inherit-product, vendor/jalapeno/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := jalapeno_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=nakasi BUILD_FINGERPRINT=google/nakasi/grouper:4.1.1/JRO03L/336647:user/release-keys PRIVATE_BUILD_DESC="nakasi-user 4.1.1 JRO03L 402395 release-keys" BUILD_NUMBER=402395

# Inherit common build.prop overrides
-include vendor/jalapeno/products/common_versions.mk

# Extra grouper overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/jalapeno/overlay/grouper

# Copy grouper specific prebuilt files
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

# Inherit googlenow blobs
-include vendor/jalapeno/products/common_googlenow.mk

