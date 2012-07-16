# Generic product
PRODUCT_NAME := jalapeno
PRODUCT_BRAND := jalapeno
PRODUCT_DEVICE := generic

# Custom CM packages
#    DSPManager
PRODUCT_PACKAGES += \
    libcyanogen-dsp \
    audio_effects.conf

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/jalapeno/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/jalapeno/proprietary/common/app/BackupRestoreConfirmation.apk:system/app/BackupRestoreConfirmation.apk \
    vendor/jalapeno/proprietary/common/app/Calendar.apk:system/app/Calendar.apk \
    vendor/jalapeno/proprietary/common/app/CalendarProvider.apk:system/app/CalendarProvider.apk \
    vendor/jalapeno/proprietary/common/app/Chrome.apk:system/app/Chrome.apk \
    vendor/jalapeno/proprietary/common/app/DefaultContainerService.apk:system/app/DefaultContainerService.apk \
    vendor/jalapeno/proprietary/common/app/DSPManager.apk:system/app/DSPManager.apk \
    vendor/jalapeno/proprietary/common/app/FaceLock.apk:system/app/FaceLock.apk \
    vendor/jalapeno/proprietary/common/app/Gallery2.apk:system/app/Gallery2.apk \
    vendor/jalapeno/proprietary/common/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/jalapeno/proprietary/common/app/Gmail.apk:system/app/Gmail.apk \
    vendor/jalapeno/proprietary/common/app/GmsCore.apk:system/app/GmsCore.apk \
    vendor/jalapeno/proprietary/common/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/jalapeno/proprietary/common/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/jalapeno/proprietary/common/app/GoogleEars.apk:system/app/GoogleEars.apk \
    vendor/jalapeno/proprietary/common/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/jalapeno/proprietary/common/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/jalapeno/proprietary/common/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/jalapeno/proprietary/common/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/jalapeno/proprietary/common/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/jalapeno/proprietary/common/app/LatinIMEDictionaryPack.apk:system/app/LatinIMEDictionaryPack.apk \
    vendor/jalapeno/proprietary/common/app/Maps.apk:system/app/Maps.apk \
    vendor/jalapeno/proprietary/common/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/jalapeno/proprietary/common/app/Music.apk:system/app/Music.apk \
    vendor/jalapeno/proprietary/common/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/jalapeno/proprietary/common/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/jalapeno/proprietary/common/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/jalapeno/proprietary/common/app/SettingsProvider.apk:system/app/SettingsProvider.apk \
    vendor/jalapeno/proprietary/common/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/jalapeno/proprietary/common/app/SharedStorageBackup.apk:system/app/SharedStorageBackup.apk \
    vendor/jalapeno/proprietary/common/app/Street.apk:system/app/Street.apk \
    vendor/jalapeno/proprietary/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/jalapeno/proprietary/common/app/SystemUI.apk:system/app/SystemUI.apk \
    vendor/jalapeno/proprietary/common/app/Talk.apk:system/app/Talk.apk \
    vendor/jalapeno/proprietary/common/app/Velvet.apk:system/app/Velvet.apk \
    vendor/jalapeno/proprietary/common/app/VisualizationWallpapers.apk:system/app/VisualizationWallpapers.apk \
    vendor/jalapeno/proprietary/common/app/VpnDialogs.apk:system/app/VpnDialogs.apk \
    vendor/jalapeno/proprietary/common/app/Wallet.apk:system/app/Wallet.apk \
    vendor/jalapeno/proprietary/common/lib/libchromeview.so:system/lib/libchromeview.so \
    vendor/jalapeno/proprietary/common/lib/libgoogle_recognizer_jni.so:system/lib/libgoogle_recognizer_jni.so \
    vendor/jalapeno/proprietary/common/lib/libjni_eglfence.so:system/lib/libjni_eglfence.so \
    vendor/jalapeno/proprietary/common/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so \
    vendor/jalapeno/proprietary/common/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/jalapeno/proprietary/common/lib/libttscompat.so:system/lib/libttscompat.so \
    vendor/jalapeno/proprietary/common/lib/libttspico.so:system/lib/libttspico.so \
    vendor/jalapeno/proprietary/common/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    vendor/jalapeno/proprietary/common/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so \
    vendor/jalapeno/proprietary/common/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
    vendor/jalapeno/proprietary/common/lib/libvorbisencoder.so:system/lib/libvorbisencoder.so \
    vendor/jalapeno/proprietary/common/xbin/su:system/xbin/su \
    vendor/jalapeno/proprietary/common/xbin/sysro:system/xbin/sysro \
    vendor/jalapeno/proprietary/common/xbin/sysrw:system/xbin/sysrw

ifeq ($(TARGET_BUILD_VARIANT),user)
# Blobs common to all devices except emulator
PRODUCT_COPY_FILES += \
    vendor/jalapeno/proprietary/common/app/Gallery2.apk:system/app/Gallery2.apk
endif

ifneq ($(filter jalapeno_toro,$(TARGET_PRODUCT)),)
# Blobs common to all devices except emulator and tablets
PRODUCT_COPY_FILES += \
    vendor/jalapeno/proprietary/common/app/CarHome.apk:system/app/CarHome.apk \
    vendor/jalapeno/proprietary/common/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/jalapeno/proprietary/common/app/SetupWizard.apk:system/app/SetupWizard.apk
endif

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

