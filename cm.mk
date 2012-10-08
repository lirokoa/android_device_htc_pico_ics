# Prepare for new BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-320x480

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/pico/pico.mk)


# Release name
PRODUCT_RELEASE_NAME := pico

PRODUCT_NAME := cm_pico
PRODUCT_BRAND := HTC
PRODUCT_DEVICE := pico
PRODUCT_MODEL := HTC Explorer A310e
PRODUCT_MANUFACTURER := HTC
