# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=Jalapeño BUILD_ID=JRO03C BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

# Rom Manager properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=BuglessBeast-Jalapeño-$(shell date +"%m-%d-%y") \
    ro.rommanager.developerid=linuxjet

