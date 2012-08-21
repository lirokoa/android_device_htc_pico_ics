# Prepare for new BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-320x480

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/pico/pico.mk)

# Include FM-Radio stuff
#$(call inherit-product, vendor/cm/products/bcm_fm_radio.mk)

PRODUCT_NAME := cm_pico
PRODUCT_BRAND := htc_europe
PRODUCT_DEVICE := pico
PRODUCT_MODEL := HTC Explorer A310
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=pico BUILD_ID=IMLK74 BUILD_FINGERPRINT=htc_asia_india/htc_pico/pico:2.3.5/GRJ90/171430.1:user/release-keys PRIVATE_BUILD_DESC="1.12.720.1 CL171430 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := pico
 
