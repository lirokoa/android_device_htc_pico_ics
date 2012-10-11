# Prepare for new BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-320x480

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

# Inherit device configuration
$(call inherit-product, device/htc/pico/pico.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := pico
PRODUCT_VERSION_DEVICE_SPECIFIC := -UNOFFICIAL-ALPHA3
CM_RELEASE := true

# Product name
PRODUCT_NAME := cm_pico
PRODUCT_BRAND := HTC
PRODUCT_DEVICE := pico
PRODUCT_MODEL := HTC Explorer A310e
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=pico BUILD_ID=JRO03R BUILD_FINGERPRINT=htc_asia_india/htc_pico/pico:2.3.5/GRJ90/171430.1:user/release-keys PRIVATE_BUILD_DESC="1.12.720.1 CL171430 release-keys"
 
