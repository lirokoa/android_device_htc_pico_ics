# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

USE_CAMERA_STUB := true

# Arch related defines
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Target information
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Yes we do,but let's hash it out
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := pico
BOARD_NO_SPEAKER := true # msm7627a doesn't have speaker
TARGET_CORTEX_CACHE_LINE_32 := true

# Kernel
BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x12c00000
BOARD_PAGE_SIZE := 0x00000800

# Additional librarys
TARGET_PROVIDES_LIBAUDIO := true

# Fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000  #kernel don't fit anymore in recovery!
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0eb40000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x09600000
BOARD_FLASH_BLOCK_SIZE := 262144

# Prebuilt kernel
TARGET_PREBUILT_KERNEL := device/htc/pico/prebuilt/kernel

# Vold
BOARD_VOLD_MAX_PARTITIONS := 24
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun0/file"
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

TARGET_SPECIFIC_HEADER_PATH := device/htc/pico/include

# OpenGL drivers config file path
BOARD_EGL_CFG := vendor/htc/pico/proprietary/lib/egl/egl.cfg
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true
TARGET_GRALLOC_USES_ASHMEM := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_PATH   := "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_FW_PATH_STA   := "/system/etc/firmware/fw_bcm4330_b2.bin"
WIFI_DRIVER_FW_PATH_AP    := "/system/etc/firmware/fw_bcm4330_apsta_b2.bin"
WIFI_DRIVER_FW_PATH_P2P   := "/system/etc/firmware/fw_bcm4330_p2p_b2.bin"
WIFI_DRIVER_MODULE_NAME   := "bcmdhd"
WIFI_DRIVER_MODULE_ARG    := "firmware_path=/system/etc/firmware/fw_bcm4330_b2.bin nvram_path=/proc/calibration iface_name=eth0"
WIFI_BAND                 := 802_11_BG

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/pico/releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/htc/pico/releasetools/ota_from_target_files

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := pico
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Misc
TARGET_BOOTANIMATION_PRELOAD := true

# Graphics
BOARD_USE_SKIA_LCDTEXT := true
TARGET_USES_GENLOCK := true
USE_OPENGL_RENDERER := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_FORCE_CPU_UPLOAD := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_USES_C2D_COMPOSITION := false
TARGET_USES_SF_BYPASS := false
TARGET_HAVE_BYPASS := false
TARGET_USES_OVERLAY := false
TARGET_QCOM_HDMI_OUT := false

# ICS Stuff
BOARD_HAS_NO_SELECT_BUTTON := true

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_USE_NEW_LIBRIL_HTC := true

# Add h/w acceleration in browser :)
ENABLE_WEBGL := true
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DREFRESH_RATE=65

# Touch screen compatibility for ICS
BOARD_USE_LEGACY_TOUCHSCREEN := true

BOARD_HAVE_FM_RADIO := true
BOARD_FM_DEVICE := bcm4330
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
